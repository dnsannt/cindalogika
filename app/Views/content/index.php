<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <a href="/Content/create" class="btn btn-primary mt-3">Tambah Data Content</a>
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
                        <th scope="col">Title</th>
                        <th scope="col">Content</th>
                        <th scope="col">Sampul</th>
                        <th scope="col">category ID</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($content as $c) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $c['title']; ?></td>
                            <td><?= $c['content']; ?></td>
                            <td><img src="/img/<?= $c['sampul']; ?>" alt="" class="sampul"></td>
                            <td><?= $c['category_id']; ?></td>
                            <td>
                                <a href="/content/<?= $c['slug']; ?>" class="btn btn-success">Detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>