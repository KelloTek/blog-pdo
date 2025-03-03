<?php
require_once "../database/users.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["username"] && $_POST["email"] && $_POST["password"]) {
        $username = htmlspecialchars($_POST["username"]);
        $email = htmlspecialchars($_POST["email"]);
        $password = $_POST["password"];

        $user = getUser($username, $email);

        if (empty($user)) {
            $password_hash = password_hash($password, PASSWORD_DEFAULT);
            $resultUser = createUser($username, $email, $password_hash);
        }

        if ($resultUser) {
            header("Location: ../pages/register.php?status=create-success");
        } else {
            header("Location: ../pages/register.php?status=create-error");
        }
    }
} else {
    header("Location: ../pages/register.php?status=error");
}
