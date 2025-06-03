<?php
if (isset($_POST['Submit'])) {
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $sks = $_POST['sks'];
    $semester = $_POST['semester'];

    $result = mysqli_query($con, "INSERT INTO matakuliah(kode, nama, sks, semester)
    VALUES('$kode','$nama','$sks','$semester')");

    header("Location:?page=matakuliah-show");
}
?>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <strong>Tambah Data Matakuliah</strong>
            </div>
            <div class="card-body">
                <form method="POST" action="?page=matakuliah-add" class="form-horizontal">
                    <div class="form-group">
                        <label for="kode" class="control-label">Kode Matakuliah</label>
                        <input type="text" class="form-control" name="kode" placeholder="Masukan kode matakuliah..." required>
                    </div>
                    <div class="form-group">
                        <label for="nama" class="control-label">Nama Matakuliah</label>
                        <input type="text" class="form-control" name="nama" placeholder="Masukan nama matakuliah..." required>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="sks" class="control-label">SKS</label>
                            <input type="number" class="form-control" name="sks" min="1" max="6"
                                placeholder="Masukan jumlah SKS..." required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="semester" class="control-label">Semester</label>
                            <select class="form-control" name="semester" required>
                                <option value="" disabled selected>Pilih Semester</option>
                                <?php for ($i = 1; $i <= 8; $i++): ?>
                                    <option value="<?php echo $i; ?>">Semester <?php echo $i; ?></option>
                                <?php endfor; ?>
                            </select>
                        </div>
                    </div>
                    <input type="submit" name="Submit" class="btn btn-primary" value="Simpan">
                    <input type="reset" name="reset" class="btn btn-warning" value="Reset">
                </form>
            </div>
        </div>
    </div>
</div>