<?php $title = "Blog - Archive";
require_once "../database/article.php";
$categories = getCategories();
$numberOfArticles = getNumberOfArticles();

$articlesPerCategories = [];
$currentPage = intval($_GET["page"]);
$itemsPerPage = 3;
$itemsStart =  ($currentPage - 1) * $itemsPerPage;
$totalPages = intval(ceil(($numberOfArticles / $itemsPerPage) / array_key_last($categories)));

foreach ($categories as $category) {
    $articlesPerCategories[$category["title"]] = getSomeArticlesByCategories($category["id"], $itemsPerPage, $itemsStart);
}

include_once "../components/header.php";
?>

<div class="container text-center mt-5">
    <h1>Archives Classés Secret Defense</h1>
    <div class="row g-5 mt-5">
        <?php foreach ($articlesPerCategories as $category => $articles): ?>
            <?php if (!empty($articles)): ?>
                <h2><?= $category; ?></h2>
                <?php foreach ($articles as $article) {
                    $id = $article["id"];
                    $title = $article["title"];
                    $content = $article["content"];
                    $image = $article["image"];
                    include "../components/card.php";
                } ?>
            <?php endif; ?>
        <?php endforeach; ?>
        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="/pages/archives.php?page=<?= $currentPage === 1 ? $currentPage : $currentPage - 1; ?>" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <?php for ($i = (1 * $currentPage) - 1; $i <= $totalPages; $i++): ?>
                    <?php if ($i !== 0): ?>
                        <li class="page-item"><a class="page-link" href="/pages/archives.php?page=<?= $i; ?>"><?= $i; ?></a></li>
                    <?php endif; ?>
                <?php endfor; ?>
                <li class="page-item">
                    <a class="page-link" href="/pages/archives.php?page=<?= $currentPage === $totalPages ? $currentPage : $currentPage + 1; ?>" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>

<?php include_once "../components/footer.php"; ?>