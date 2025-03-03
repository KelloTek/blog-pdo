<?php
require_once "../database/comments.php";
require_once "../database/users.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["username"] && $_POST["content"] && $_GET["id"]) {
        $username = htmlspecialchars($_POST["username"]);
        $content = htmlspecialchars($_POST["content"]);
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
                $resultComment = createComment($content, $id, $user["id"]);
            } else {
                header("Location: ../pages/article.php?id=$id&status=comment-error");
            }
        }

        header("Location: ../pages/article.php?id=$id");
    }
} else {
    header("Location: ../pages/article.php?id=$id&status=comment-error");
}
