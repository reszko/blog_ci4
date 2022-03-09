<?= $this->extend('layout') ?>

<?= $this->section('posts') ?>

<div class="card">
    <div class="card-body">
        <h1><?php echo $post['title'] ?></h1>
        <?php echo nl2br($post['body']) ?>
        <p class="mt-3"><?php echo anchor(base_url(), 'Home') ?></p>
    </div>
</div>



<div class="card mt-4">
    <div class="card-header bg-secondary text-white">
        Comentários
    </div>
    <div class="card-body">
        <?php if (count($comentarios) >  0) : ?>
            <?php foreach ($comentarios as $comentario) : ?>
                <div class="card my-3">
                    <div class="card-body">
                        <p class="small">Comentário feito em: <?php echo date('d/m/Y H:i:s', strtotime($comentario['created_at'])) ?></p>
                        <?php echo nl2br($comentario['comentario']) ?>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else : ?>
            <p>Seja o primeiro a comentar.</p>
        <?php endif; ?>
        <div class="card">
            <div class="card-body">
                <?php echo form_open('comentario/store') ?>
                <div class="form-group">
                    <textarea name="comentario" id="comentario" class="form-control" cols="30" rows="3"></textarea>
                    <?php if (!empty($errors['comentario'])) : ?>
                        <div class="alert alert-danger mt-2"><?php echo $errors['comentario'] ?></div>
                    <?php endif; ?>
                </div>
                <div class="form-group mt-2">
                    <button class="btn btn-success">Enviar</button>
                </div>
                <input type="hidden" name="posts_id" value="<?php echo $post['id'] ?>">
                <?php echo form_close() ?>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection() ?>