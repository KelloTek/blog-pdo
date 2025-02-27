<?php
require_once "../database/article.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["title"] && $_POST["content"] && $_POST["image"] && $_POST["category"] && $_GET["id"]) {
        $title = htmlspecialchars($_POST["title"]);
        $content = htmlspecialchars($_POST["content"]);
        $image = htmlspecialchars($_POST["image"]);
        $category = htmlspecialchars($_POST["category"]);
        $id = htmlspecialchars($_GET["id"]);

        $result = editArticle($id, $title, $content, $image, $category);

        header("Location: ../pages/article.php?id=$id");
    }
} else {
    header("Location: ../pages/edit-article.php?status=error");
}