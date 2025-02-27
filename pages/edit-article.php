<?php $title = "Blog - Edit";
require_once "../database/article.php";
$article = getArticle($_GET["id"]);
$categories = getCategories();

include_once "../components/header.php";
?>

<div class="container mt-5">
    <?php if (isset($_GET["status"]) && in_array($_GET["status"], (array) "error")): ?>
        <div class="alert alert-danger" role="alert">
            <p>Une erreur est survenue lors de la modification de l'article. Veuillez réessayer ultérieurement.</p>
        </div>
    <?php endif; ?>
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

<?php include_once "../components/footer.php"; ?>