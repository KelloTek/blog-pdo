<?php
require_once "../database/comments.php";
session_start();

$id = htmlspecialchars($_GET["id"]);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["content"] && $_GET["id"] && isset($_SESSION["user"])) {
        $content = htmlspecialchars($_POST["content"]);
        $id = htmlspecialchars($_GET["id"]);

        $resultComment = createComment($content, $id, $_SESSION["user"]["id"]);

        header("Location: ../pages/article.php?id=$id");
    } else {
        header("Location: ../pages/article.php?id=$id&status=comment-error");
    }
} else {
    header("Location: ../pages/article.php?id=$id&status=comment-error");
}
