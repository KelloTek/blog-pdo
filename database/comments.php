<?php
require_once "pdo.php";

function getComments($article)
{
    global $pdo;

    $sql = "SELECT * FROM comments WHERE article_id = :id ORDER BY created_at ASC;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id" => $article,
    ]);

    $results = $stmt->fetchAll();

    return $results;
}

function createComment($username, $content, $id): bool
{
    global $pdo;

    $pdo->beginTransaction();

    $sql = "INSERT INTO comments (username, content, article_id) VALUES (:username, :content, :article_id);";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":username" => $username,
        ":content" => $content,
        ":article_id" => $id,
    ]);

    return $pdo->commit();
}