<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html>
<head>
    <title> Beranda </title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">
</head>
<body>

<?php if ($this->session->has_userdata('username')): ?>
    <div class="row">
        <div class="col-md-12">
            <?php $this->load->view('VHeader') ?>
        </div>
    </div>
    <div class="row mt-5">
    <div class="container">
        <?= form_open('App_controller/CProsesEditMember/'.$data['id_member'], ['method' => 'POST']) ?>
            <div class="form-group">
                <label>Nama Member</label>
                <input type="text" class="form-control" name="nm_member" required value="<?= $data['nm_member']?>">
            </div>
            <div class="form-group">
                <label>No. Telp</label>
                <input type="number" class="form-control" name="tlp_member" required value="<?= $data['tlp_member'] ?>">
            </div>
            <div class="form-group">
                <label>Alamat Member</label>
                <input type="text" class="form-control" name="alamat_member" required value="<?= $data['alamat_member'] ?>">
            </div>
            <input type="submit" class="btn btn-success" value="Ubah">
        <?= form_close()?>
    </div>
    </div>
    
<?php else: ?>
    <?php $this->load->view('VLogin') ?>
<?php endif ?>
<script type="text/javascript" src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>
</body>
</html>
