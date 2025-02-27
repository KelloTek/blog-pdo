<?php
require_once "../database/comments.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["username"] && $_POST["content"] && $_GET["id"]) {
        $username = htmlspecialchars($_POST["username"]);
        $content = htmlspecialchars($_POST["content"]);
        $id = htmlspecialchars($_GET["id"]);

        $result = createComment($username, $content, $id);

        header("Location: ../pages/article.php?id=$id");
    }
} else {
    header("Location: ../pages/create-comment.php?status=error");
}