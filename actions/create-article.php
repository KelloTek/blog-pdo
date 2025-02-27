<?php
require_once "../database/article.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["title"] && $_POST["content"] && $_POST["image"] && $_POST["category"]) {
        $title = htmlspecialchars($_POST["title"]);
        $content = htmlspecialchars($_POST["content"]);
        $image = htmlspecialchars($_POST["image"]);
        $category = htmlspecialchars($_POST["category"]);

        $result = createArticle($title, $content, $image, $category);

        header("Location: ../index.php");
    }
} else {
    header("Location: ../pages/create-article.php?status=error");
}
