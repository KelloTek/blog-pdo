<?php $title = "Blog - Article";
require_once "../database/article.php";
require_once "../database/comments.php";
$article = getArticle($_GET["id"]);
$comments = getComments($_GET["id"]);

include_once "../components/header.php";
?>

<div class="container text-center mt-5">
    <!-- Article -->
    <h1><?= $article["category_title"]; ?> - <?php echo $article["title"]; ?></h1>
    <div class="card mb-3 mt-5">
        <img src="<?php echo $article["image"]; ?>" class="card-img-top" alt="Image de l'article <?php echo $article["title"]; ?>">
        <div class="card-body">
            <p class="card-text"><?php echo $article["content"]; ?></p>
            <p class="card-text"><small class="text-body-secondary">Crée le <?php echo $article["created_at"]; ?></small></p>
        </div>
        <a href="/pages/edit-article.php?id=<?php echo $_GET["id"]; ?>" class="btn btn-primary">Modifier l'article</a>
    </div>

    <!-- Comments -->
    <div class="card">
        <h5 class="card-header">Commentaires</h5>
        <a href="/pages/create-comment.php?id=<?php echo $_GET["id"]; ?>" class="btn btn-primary">Publier un commentaire</a>
        <?php foreach ($comments as $item): ?>
            <div class="card-body">
                <h5 class="card-title"><?php echo $item["username"]; ?></h5>
                <p class="card-text"><?php echo $item["content"]; ?></p>
                <p class="card-text"><small class="text-body-secondary">Crée le <?php echo $item["created_at"]; ?></small></p>
            </div>
        <?php endforeach; ?>
    </div>
</div>


<?php include_once "../components/footer.php"; ?>