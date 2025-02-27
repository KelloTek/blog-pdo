<?php $title = "Blog - Acceuil";
require_once "./database/article.php";
$articles = getArticles(false);

include_once "./components/header.php";
?>

<div class="container text-center mt-5">
    <h1>Article récents</h1>
    <div class="row g-5 mt-5">
        <?php foreach ($articles as $item) {
            $id = $item["id"];
            $title = $item["title"];
            $content = $item["content"];
            $image = $item["image"];
            include "./components/card.php";
        } ?>
    </div>
</div>

<?php include_once "./components/footer.php"; ?>