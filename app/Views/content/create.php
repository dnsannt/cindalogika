<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Tambah Data Content</h2>

            <form action="/content/save" method="POST" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <div class="row mb-3">
                    <label for="title" class="col-sm-2 col-form-label">Title</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('title'))
                                                                    ? 'is-invalid' : ''; ?>" id="title" name="title" autofocus value="<?= old('title'); ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('title'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="content" class="col-sm-2 col-form-label">Content</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="content" name="content" value="<?= old('content'); ?>">
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                    <div class="col-sm-8">
                        <div class="mb-2">
                            <label for="Sampul" class="form-label">Pilih gambar..</label>
                            <div class="col-sm-2">
                                <img src="/img/default.png" class="thumbnail img-preview">
                            </div>
                            <input class="form-control <?= ($validation->hasError('sampul'))
                                                            ? 'is-invalid' : ''; ?>" type="file" id="sampul" name="sampul" onchange="previewImg()">
                            <div class="invalid-feedback">
                                <?= $validation->getError('sampul'); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Tambah Data</button>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>