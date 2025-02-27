<?php $title = "Blog - Create";
include_once "../components/header.php";
?>

<div class="container mt-5">
    <?php if (isset($_GET["status"]) && in_array($_GET["status"], (array) "error")): ?>
        <div class="alert alert-danger" role="alert">
            <p>Une erreur est survenue lors de la création de votre commentaire. Veuillez réessayer ultérieurement.</p>
        </div>
    <?php endif; ?>
    <form action="/actions/create-comment.php?id=<?php echo $_GET['id']; ?>" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">Nom d'utilisateur *</label>
            <input name="username" type="text" class="form-control" id="username" required>
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Contenu du commentaire *</label>
            <textarea class="form-control" id="content" name="content" rows="3" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Publier</button>
    </form>
</div>

<?php include_once "../components/footer.php"; ?>