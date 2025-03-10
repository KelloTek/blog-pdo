<?php
require_once "pdo.php";

function getArticles($isAll)
{
    global $pdo;

    $sql2 = ";";

    if (!$isAll) {
        $sql2 = "LIMIT 5;";
    }

    $sql = "SELECT a.* FROM articles a ORDER BY a.created_at DESC " . $sql2;
    $stmt = $pdo->prepare($sql);

    $stmt->execute();

    $results = $stmt->fetchAll();

    return $results;
}

function getArticle($id)
{
    global $pdo;

    $sql = "SELECT a.*, c.title as category_title, u.name as username FROM articles a JOIN categories c ON a.category_id = c.id JOIN users u ON a.user_id = u.id WHERE a.id = :id;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id" => $id,
    ]);

    $result = $stmt->fetch();

    return $result;
}

function getNumberOfArticles()
{
    global $pdo;

    $sql = "SELECT COUNT(*) FROM articles;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute();

    $results = $stmt->fetchColumn();

    return $results;
}

function getSomeArticlesByCategories($categoryId, $limit, $offset)
{
    global $pdo;

    $sql = "SELECT a.* FROM articles a WHERE a.category_id = :category ORDER BY a.created_at DESC LIMIT :limit OFFSET :offset;";
    $stmt = $pdo->prepare($sql);

    $stmt->bindParam(':category', $categoryId, PDO::PARAM_INT);
    $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
    $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);

    $stmt->execute();

    $results = $stmt->fetchAll();

    return $results;
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

function createArticle($title, $content, $image, $category, $username): bool
{
    global $pdo;

    $sql = "INSERT INTO articles (title, content, image, category_id, user_id) VALUES (:title, :content, :image, :category, :user);";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":title" => $title,
        ":content" => $content,
        ":image" => $image,
        ":category" => $category,
        ":user" => $username,
    ]);

    return true;
}

function editArticle($id, $title, $content, $image, $category, $user): bool
{
    global $pdo;

    $sql = "UPDATE articles SET title = :title, content = :content, image = :image, category_id = :category, user_id = :user WHERE id = :id;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id" => $id,
        ":title" => $title,
        ":content" => $content,
        ":image" => $image,
        ":category" => $category,
        ":user" => $user,
    ]);

    return true;
}
