<?php $title = "Blog - Archive";
require_once "../database/article.php";
$articles = getArticles(true);
$categories = getCategories();

include_once "../components/header.php";
?>

<div class="container text-center mt-5">
    <h1>Tout les articles</h1>
    <div class="row g-5 mt-5">
        <?php foreach ($categories as $category): ?>
            <h2><?= $category["title"]; ?></h2>
            <?php foreach ($articles as $article) {
                if ($article["category_id"] === $category["id"]) {
                    $id = $article["id"];
                    $title = $article["title"];
                    $content = $article["content"];
                    $image = $article["image"];
                    include "../components/card.php";
                }
            } ?>
        <?php endforeach; ?>
    </div>
</div>

<?php include_once "../components/footer.php"; ?>