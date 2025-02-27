<?php $title = "Blog - Create";
require_once "../database/article.php";
$category = getCategories();

include_once "../components/header.php";
?>

<div class="container mt-5">
    <?php if (isset($_GET["status"]) && in_array($_GET["status"], (array) "error")): ?>
        <div class="alert alert-danger" role="alert">
            <p>Une erreur est survenue lors de la création de l'article. Veuillez réessayer ultérieurement.</p>
        </div>
    <?php endif; ?>
    <form action="/actions/create-article.php" method="post">
        <div class="mb-3">
            <label for="title" class="form-label">Titre de l'article *</label>
            <input name="title" type="text" class="form-control" id="title" required>
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Contenu de l'article *</label>
            <textarea class="form-control" id="content" name="content" rows="3" required></textarea>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Lien vers l'image de l'article *</label>
            <input type="text" class="form-control" id="image" name="image" required>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Séléctionner la catégorie de votre article *</label>
            <select class="form-select" id="category" name="category" required>
                <?php foreach ($category as $item): ?>
                    <option value="<?= $item["id"]; ?>"><?= $item["title"]; ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Publier</button>
    </form>
</div>

<?php include_once "../components/footer.php"; ?>