<div class="container">
    <h5>Produk Jual <?php echo $this->session->userdata("nama_member") ?></h5>

    <table class="table">
        <thead>
            <tr>
                <th>No</th>
                <th>Produk</th>
                <th>Harga</th>
                <th>Foto</th>
                <th>Opsi</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($produk as $k => $v) : ?>
                <tr>
                    <td><?php echo $k+1?></td>
                    <td><?php echo $v['nama_produk']?></td>
                    <td><?php echo $v['harga_produk']?></td>
                    <td>
                        <img src="<?php echo base_url("assets/produk/".$v["foto_produk"])?>" alt="" width="200">
                    </td>
                    <td>
                        <a href="" class="btn btn-warning">Edit</a>
                        <a href="" class="btn btn-danger">Hapus</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <a href="" class="btn btn-primary">Tambah</a>
</div>