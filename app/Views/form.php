<?= $this->extend('layout') ?>
<?= $this->section('posts') ?>

<script>
    function confirma() {
        if (!confirm("Deseja excluir este post?")) {
            return false;
        }
        return true;
    }
</script>

<div class="card">
    <div class="card-header bg-secondary text-white">
        <div class="row">
            <div class="col">
                <?php echo $titulo; ?>
            </div>
            <div class="col d-flex justify-content-end">
                <?php if (isset($post)) : ?>
                    <?php echo anchor('post/excluir/' . $post['id'], 'Excluir', ['class' => 'text-white', 'onclick' => 'return confirma()']) ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <div class="card-body">
        <?php echo form_open('post/store') ?>
        <div class="form-group">
            <label for="title">Título</label>
            <input type="text" name="title" id="title" class="form-control" value="<?php echo isset($post['title']) ? $post['title'] : set_value('title') ?>">
            <?php if (!empty($errors['title'])) : ?>
                <div class="alert alert-danger mt-2"><?php echo $errors['title'] ?></div>
            <?php endif; ?>
        </div>
        <div class="form-group">
            <label for="slug">Slug</label>
            <input type="text" name="slug" id="slug" class="form-control" value="<?php echo  isset($post['slug']) ? $post['slug'] : set_value('slug') ?>">
            <?php if (!empty($errors['slug'])) : ?>
                <div class="alert alert-danger mt-2"><?php echo $errors['slug'] ?></div>
            <?php endif; ?>
        </div>
        <div class="form-group">
            <label for="body">Post</label>
            <textarea name="body" id="body" cols="30" rows="10" class="form-control"><?php echo  isset($post['body']) ? $post['body'] : set_value('body') ?></textarea>
            <?php if (!empty($errors['body'])) : ?>
                <div class="alert alert-danger mt-2"><?php echo $errors['body'] ?></div>
            <?php endif; ?>
        </div>
        <div class="form-group mt-3">
            <button class="btn btn-success" type="submit">Salvar</button>
        </div>
        <input type="hidden" name="id" value="<?php echo  isset($post['id']) ? $post['id'] : set_value('id') ?>">
        <?php form_close() ?>
    </div>
</div>

<?= $this->endSection() ?>