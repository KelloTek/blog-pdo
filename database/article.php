<?php
require_once "pdo.php";

function getArticles($isAll)
{
    global $pdo;
    $sql2 = ";";

    if (!$isAll) {
        $sql2 = "LIMIT 5;";
    }

    $sql = "SELECT a.*, c.title as category_title FROM articles a JOIN categories c ON a.category_id = c.id ORDER BY a.created_at DESC " . $sql2;
    $stmt = $pdo->prepare($sql);

    $stmt->execute();

    $results = $stmt->fetchAll();

    return $results;
}

function getArticle($id)
{
    global $pdo;

    $targetId = $id;

    $sql = "SELECT a.*, c.title as category_title FROM articles a JOIN categories c ON a.category_id = c.id WHERE a.id = :id;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id" => $targetId,
    ]);

    $result = $stmt->fetch();

    return $result;
}

function getCategories()
{
    global $pdo;

    $sql = "SELECT * FROM categories;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute();

    $results = $stmt->fetchAll();

    return $results;
}

function createArticle($title, $content, $image, $category): bool
{
    global $pdo;

    $pdo->beginTransaction();

    $sql = "INSERT INTO articles (title, content, image, category_id) VALUES (:title, :content, :image, :category);";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":title" => $title,
        ":content" => $content,
        ":image" => $image,
        ":category" => $category,
    ]);

    return $pdo->commit();
}

function editArticle($id, $title, $content, $image, $category): bool
{
    global $pdo;

    $pdo->beginTransaction();

    $sql = "UPDATE articles SET title = :title, content = :content, image = :image, category_id = :category WHERE id = :id;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id" => $id,
        ":title" => $title,
        ":content" => $content,
        ":image" => $image,
        ":category" => $category,
    ]);

    return $pdo->commit();
}
