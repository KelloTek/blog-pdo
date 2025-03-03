<?php
require_once "pdo.php";

function getComments($article)
{
    global $pdo;

    $sql = "SELECT c.*, u.name as username FROM comments c JOIN users u ON c.user_id = u.id WHERE article_id = :id ORDER BY created_at ASC;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id" => $article,
    ]);

    $results = $stmt->fetchAll();

    return $results;
}

function createComment($content, $id, $user): bool
{
    global $pdo;

    $pdo->beginTransaction();

    $sql = "INSERT INTO comments (content, article_id, user_id) VALUES (:content, :article_id, :user);";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":content" => $content,
        ":article_id" => $id,
        ":user" => $user,
    ]);

    return $pdo->commit();
}