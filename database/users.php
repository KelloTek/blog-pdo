<?php
require_once "pdo.php";

function getUser($name, $email)
{
    global $pdo;

    $sql = "SELECT * FROM users WHERE name = :name AND email = :email;";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":name" => $name,
        ":email" => $email,
    ]);

    $result = $stmt->fetch();

    return $result;
}

function createUser($name, $email, $password): bool
{
    global $pdo;

    $sql = "INSERT INTO users (name, email, password) VALUES (:name, :email, :password);";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":name" => $name,
        ":email" => $email,
        ":password" => $password,
    ]);

    return true;
}
