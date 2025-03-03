<?php $title = "Blog - Register";

include_once "../components/header.php";
?>

<div class="container text-center my-5">
    <h1>Créer un compte</h1>
    <?php if (isset($_GET["status"]) && in_array($_GET["status"], (array) "create-success")): ?>
        <div class="alert alert-success" role="alert">
            <p>Votre compte a été crée avec succès.</p>
        </div>
    <?php elseif (isset($_GET["status"]) && in_array($_GET["status"], (array) "create-error")): ?>
        <div class="alert alert-danger" role="alert">
            <p>Une erreur est survenue lors de la création de votre compte. Vous avez déjà un compte.</p>
        </div>
    <?php elseif (isset($_GET["status"]) && in_array($_GET["status"], (array) "error")): ?>
        <div class="alert alert-danger" role="alert">
            <p>Une erreur est survenue lors de la création de votre compte. Veuillez réessayer ultérieurement.</p>
        </div>
    <?php endif; ?>
    <form action="/actions/register.php" method="post" class="mt-5">
        <div class="mb-3">
            <label for="username" class="form-label">Nom d'utilisateur *</label>
            <input name="username" type="text" class="form-control" id="username" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Addresse Email *</label>
            <input name="email" type="email" class="form-control" id="email" required>
        </div>
        <div class="mb-5">
            <label for="password" class="form-label">Mot de passe *</label>
            <input name="password" type="password" class="form-control" id="password" required>
        </div>
        <button type="submit" class="btn btn-primary">S'inscrire</button>
    </form>
</div>

<?php include_once "../components/footer.php"; ?>