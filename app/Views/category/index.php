<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <a href="/Category/create" class="btn btn-primary mt-3">Tambah Data Category</a>
            <h1 class="mt-2">Daftar Content</h1>

            <!-- FLASH DATA -->
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Category</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($category as $c) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $c['category']; ?></td>
                            <td>
                                <a href="/category/<?= $c['id']; ?>" class="btn btn-success">Detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>