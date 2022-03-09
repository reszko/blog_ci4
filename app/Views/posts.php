<?= $this->extend('layout') ?>

<?= $this->section('posts') ?>
<h1>Blog de Tecnologia</h1>
<hr>
<?php if (count($posts) > 0) : ?>
    <?php foreach ($posts as $post) : ?>
        <div class="card my-2">
            <div class="card-header bg-primary text-white"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-11">
                        <h3><?php echo $post['title'] ?></h3>
                    </div>
                    <div class="col-sm-1 d-flex justify-content-end">
                        <?php echo anchor('post/edit/' . $post['id'], 'Editar') ?>
                    </div>
                </div>
                <?php echo word_limiter($post['body'], 40) ?>
                <p class="mb-0 mt-2"><?php echo anchor('post/view/' . $post['id'], 'Leia mais...') ?></p>
            </div>
        </div>
    <?php endforeach; ?>
<?php else : ?>
    <p>Nenhum post encontrado</p>
<?php endif; ?>
<?= $this->endSection() ?>