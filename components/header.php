<?php

session_start();

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
    <link rel="stylesheet" href="/public/bootstrap/bootstrap/dist/css/bootstrap.min.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Blog PDO</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                    <a class="nav-link active" aria-current="page" href="/pages/archives.php?page=1">Archives</a>
                    <a class="btn btn-outline-success" href="/pages/create-article.php">Créer un nouvelle article</a>
                </div>
            </div>
            <div class="navbar-nav">
                <?php if (isset($_SESSION["user"])): ?>
                    <a class="nav-link active" aria-current="page" href="#">Bonjour, <?= $_SESSION["user"]["name"]; ?></a>
                    <a class="btn btn-outline-danger" href="/actions/unlogin.php">Se déconnecter</a>
                <?php else: ?>
                    <a class="btn btn-outline-dark" href="/pages/login.php">Se connecter</a>
                    <a class="btn btn-outline-primary" href="/pages/register.php">Créer un compte</a>
                <?php endif; ?>

            </div>
        </div>
    </nav>