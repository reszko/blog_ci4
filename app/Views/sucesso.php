<?= $this->extend('layout') ?>

<?= $this->section('posts') ?>

<div class="card">
    <div class="card-header bg-success text-white">
        Mensagem
    </div>
    <div class="card-body">
        <?php $mensagem = session()->getFlashData('mensagem'); ?>
        <?php if (!empty($mensagem)) : ?>
            <p> <?php echo $mensagem ?></p>
        <?php else : ?>
            <p>Seu post foi salvo com sucesso.</p>
        <?php endif; ?>
        <p><?php echo anchor(base_url(), 'Página Inicial') ?></p>
    </div>
</div>

<?= $this->endSection() ?>