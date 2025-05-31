<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h5>Registrasi Member</h5>
            <form action="" method="post">
                <div class="mb-3">
                    <label for="">email</label>
                    <input type="text" class="form-control" name="email_member" value="<?php echo set_value("email_member") ?>">
                    <span class="text-muted"><?php echo form_error("email_member") ?></span>
                </div>
                <div class="mb-3">
                    <label for="">password</label>
                    <input type="text" class="form-control" name="password_member" value="<?php echo set_value("password_member") ?>">
                    <span class="text-muted"><?php echo form_error("password_member") ?></span>
                </div>
                <div class="mb-3">
                    <label for="">nama</label>
                    <input type="text" class="form-control" name="nama_member" value="<?php echo set_value("nama_member") ?>">
                    <span class="text-muted"><?php echo form_error("nama_member") ?></span>
                </div>
                <div class="mb-3">
                    <label for="">alamat</label>
                    <textarea name="alamat_member" id="" class="form-control"><?php echo set_value("alamat_member") ?></textarea>
                    <span class="text-muted"><?php echo form_error("alamat_member") ?></span>
                </div>
                <div class="mb-3">
                    <label for="">nomor WA</label>
                    <input type="text" class="form-control" name="wa_member" value="<?php echo set_value("wa_member") ?>">
                    <span class="text-muted"><?php echo form_error("wa_member") ?></span>
                </div>
                <div class="mb-3">
                    <label for=""> kota/kabupaten</label>
                    <select name="city_id" id="" class="form-control form-select">
                        <option value="">Pilih</option>
                        <?php foreach ($distrik as $key => $v) : ?>
                            <option value="<?php echo $v["city_id"] ?>" <?php echo $v['city_id']==set_value("city_id") ? "selected" : "" ?>>
                                <?php echo $v["type"] ?>
                                <?php echo $v["city_name"] ?>
                                <?php echo $v["province"] ?>
                            </option>
                        <?php endforeach ?>
                    </select>
                    <span class="text-muted"><?php echo form_error("city_id") ?></span>
                </div>
                <button class="btn btn-primary">Kirim</button>
            </form>
        </div>
    </div>
</div>