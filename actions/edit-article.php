<?php
require_once "../database/article.php";
require_once "../database/users.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["title"] && $_POST["content"] && $_POST["image"] && $_POST["category"] && $_GET["id"]) {
        $title = htmlspecialchars($_POST["title"]);
        $content = htmlspecialchars($_POST["content"]);
        $image = htmlspecialchars($_POST["image"]);
        $category = htmlspecialchars($_POST["category"]);
        $id = htmlspecialchars($_GET["id"]);

        if ($_POST["username"] && $_POST["email"] && $_POST["password"]) {
            $username = htmlspecialchars($_POST["username"]);
            $email = htmlspecialchars($_POST["email"]);
            $password = htmlspecialchars($_POST["password"]);

            $user = getUser($username, $email);

            if (empty($user)) {
                $password_hash = password_hash($password, PASSWORD_DEFAULT);
                $resultUser = createUser($username, $email, $password_hash);
            }

            $user = getUser($username, $email);

            $password_verified = password_verify($password, $user["password"]);

            if ($password_verified) {
                $resultArticle = editArticle($id, $title, $content, $image, $category, $user["id"]);
            } else {
                header("Location: ../pages/article.php?id=$id&status=article-error");
            }
        }

        header("Location: ../pages/article.php?id=$id");
    }
} else {
    header("Location: ../pages/article.php?id=$id&status=article-error");
}
