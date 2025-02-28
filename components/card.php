<div class="col-12 col-md-6 col-lg-4">
    <div class="card" style="width: 18rem;">
        <img src="<?= $image; ?>" class="card-img-top" alt="Image de la carte <?= $title; ?>">
        <div class="card-body">
            <h5 class="card-title"><?= $title; ?></h5>
            <p class="card-text"><?= substr($content, 0, 100) . "..."; ?></p>
            <a href="/pages/article.php?id=<?= $id; ?>" class="btn btn-primary">Voir plus</a>
        </div>
    </div>
</div>