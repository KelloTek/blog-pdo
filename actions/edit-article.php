<?php
require_once "../database/article.php";
session_start();

$id = htmlspecialchars($_GET["id"]);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["title"] && $_POST["content"] && $_POST["image"] && $_POST["category"] && $_GET["id"] && isset($_SESSION["user"])) {
        $title = htmlspecialchars($_POST["title"]);
        $content = htmlspecialchars($_POST["content"]);
        $image = htmlspecialchars($_POST["image"]);
        $category = htmlspecialchars($_POST["category"]);
        $id = htmlspecialchars($_GET["id"]);

        $resultArticle = editArticle($id, $title, $content, $image, $category, $_SESSION["user"]["id"]);

        header("Location: ../pages/article.php?id=$id");
    } else {
        header("Location: ../pages/article.php?id=$id&status=article-error");
    }
} else {
    header("Location: ../pages/article.php?id=$id&status=article-error");
}
