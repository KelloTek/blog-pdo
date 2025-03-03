<?php
require_once "../database/users.php";
session_start();

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["username"] && $_POST["email"] && $_POST["password"]) {
        $username = htmlspecialchars($_POST["username"]);
        $email = htmlspecialchars($_POST["email"]);
        $password = $_POST["password"];

        $user = getUser($username, $email);

        $password_verified = password_verify($password, $user["password"]);
        var_dump($password_verified);

        if ($password_verified) {
            $_SESSION["user"] = $user;
            header("Location: ../index.php?status=login-success");
        } else {
            header("Location: ../pages/login.php?status=login-error");
        }
    }
} else {
    header("Location: ../pages/login.php?status=error");
}
