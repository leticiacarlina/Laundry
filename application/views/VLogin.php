<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html>
<head>
  <title> Login </title>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">

</head>
<body>

<div class="container mt-4">
    <div class="card mx-auto" style="width: 500px;">
        <div class="card-body">
        <?php if (!empty($this->session->flashdata('error_login'))) :?>
            <div class="alert alert-warning">
                <p> Mohon maaf password atau username salah </p>
            </div>
        <?php endif ?>

            <?= form_open('App_controller/CProsesLogin', ['method' => 'POST']) ?>
                    <h3>Silahkan Log In!</h3>
                    <div class="form-group">
                        <label>Nama Pengguna :</label>
                        <input type="text" class="form-control" name="username" placeholder="Silahkan Masukkan Nama">
                    </div>
                    <div class="form-group">
                        <label>Password :</label>
                        <input type="password" class="form-control" name="password" placeholder="Silahkan Masukkan Password">
                    </div>
                    <input type="submit" class="btn btn-primary" value="Login">
            <?= form_close()?>
        </div>
    </div>
</div>
<script type="text/javascript" src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>
</body>
</html>
