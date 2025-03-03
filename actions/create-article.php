<?php
require_once "../database/article.php";
session_start();

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["title"] && $_POST["content"] && $_POST["image"] && $_POST["category"] && isset($_SESSION["user"])) {
        $title = htmlspecialchars($_POST["title"]);
        $content = htmlspecialchars($_POST["content"]);
        $image = htmlspecialchars($_POST["image"]);
        $category = htmlspecialchars($_POST["category"]);

        $resultArticle = createArticle($title, $content, $image, $category, $_SESSION["user"]["id"]);
        header("Location: ../index.php");
    } else {
        header("Location: ../pages/create-article.php?status=error");
    }
} else {
    header("Location: ../pages/create-article.php?status=error");
}
