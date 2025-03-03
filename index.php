<?php $title = "Blog - Acceuil";
require_once "./database/article.php";
$articles = getArticles(false);
$firstArticleId = $articles[0]["id"];

include_once "./components/header.php";
?>

<div class="container text-center mt-5">
    <?php if (isset($_GET["status"]) && in_array($_GET["status"], (array) "login-success")): ?>
        <div class="alert alert-success" role="alert">
            <p>Connexion à votre compte effectué avec succès.</p>
        </div>
    <?php endif; ?>
    <h1>À la une</h1>
    <div id="carouselExampleInterval" class="carousel slide my-5" data-bs-ride="carousel">
        <div class="carousel-inner">
            <?php foreach ($articles as $article): ?>
                <a href="/pages/article.php?id=<?= $article["id"]; ?>">
                    <div class="carousel-item <?= $article["id"] === $firstArticleId ? 'active' : '' ?>" data-bs-interval="10000">
                        <img src="<?= $article["image"]; ?>" class="d-block w-100" alt="Photo de l'article à la une.">
                        <div class="carousel-caption d-none d-md-block p-0">
                            <div class="alert alert-primary m-0" role="alert">
                                <h5><?= $article["title"]; ?></h5>
                                <p><?= substr($article["content"], 0, 100) . "..."; ?></p>
                            </div>
                        </div>
                    </div>
                </a>
            <?php endforeach; ?>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<?php include_once "./components/footer.php"; ?>