<?php $title = "Blog - Article";
require_once "../database/article.php";
require_once "../database/comments.php";
$article = getArticle($_GET["id"]);
$comments = getComments($_GET["id"]);
$categories = getCategories();

include_once "../components/header.php";
?>

<div class="container text-center mt-5">
    <?php if (isset($_GET["status"]) && in_array($_GET["status"], (array) "article-error")): ?>
        <div class="alert alert-danger" role="alert">
            <p>Une erreur est survenue lors de la modification de l'article. Veuillez réessayer ultérieurement.</p>
        </div>
    <?php endif; ?>

    <?php if (isset($_GET["status"]) && in_array($_GET["status"], (array) "comment-error")): ?>
        <div class="alert alert-danger" role="alert">
            <p>Une erreur est survenue lors de la création de votre commentaire. Veuillez réessayer ultérieurement.</p>
        </div>
    <?php endif; ?>

    <!-- Article -->
    <h1><?= $article["category_title"]; ?> - <?= $article["title"]; ?></h1>
    <div class="card mb-3 mt-5">
        <img src="<?= $article["image"]; ?>" class="card-img-top" alt="Image de l'article <?= $article["title"]; ?>">
        <div class="card-body">
            <p class="card-text"><?= $article["content"]; ?></p>
            <p class="card-text"><small class="text-body-secondary">Crée le <?= $article["created_at"]; ?> par <?= $article["username"]; ?></small></p>
        </div>
        <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasArticle" aria-controls="offcanvasExample">
            Modifier l'article
        </button>
    </div>
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasArticle" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Modifier l'article</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <form action="/actions/edit-article.php?id=<?= $_GET['id']; ?>" method="post">
                <div class="mb-3">
                    <label for="title" class="form-label">Titre de l'article *</label>
                    <input name="title" type="text" class="form-control" id="title" value="<?= $article["title"]; ?>" required>
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label">Contenu de l'article *</label>
                    <textarea class="form-control" id="content" name="content" rows="3" required><?= $article["content"]; ?></textarea>
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label">Lien vers l'image de l'article *</label>
                    <input type="text" class="form-control" id="image" name="image" value="<?= $article["image"]; ?>" required>
                </div>
                <div class="mb-3">
                    <label for="category" class="form-label">Séléctionner la catégorie de votre article *</label>
                    <select class="form-select" id="category" name="category" required>
                        <?php foreach ($categories as $category): ?>
                            <option value="<?= $category["id"]; ?>"
                                <?= $article["category_id"] === $category["id"] ? "selected" : "" ?>>
                                <?= $category["title"]; ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Modifier</button>
            </form>
        </div>
    </div>


    <!-- Comments -->
    <div class="card">
        <h5 class="card-header">Commentaires</h5>
        <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasComment" aria-controls="offcanvasExample">
            Publier un commentaire
        </button>
        <?php foreach ($comments as $item): ?>
            <div class="card-body">
                <h5 class="card-title"><?= $item["username"]; ?></h5>
                <p class="card-text"><?= $item["content"]; ?></p>
                <p class="card-text"><small class="text-body-secondary">Crée le <?= $item["created_at"]; ?></small></p>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasComment" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Publier un commentaire</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <form action="/actions/create-comment.php?id=<?= $_GET['id']; ?>" method="post">
                <div class="mb-3">
                    <label for="content" class="form-label">Contenu du commentaire *</label>
                    <textarea class="form-control" id="content" name="content" rows="3" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Publier</button>
            </form>
        </div>
    </div>
</div>


<?php include_once "../components/footer.php"; ?>