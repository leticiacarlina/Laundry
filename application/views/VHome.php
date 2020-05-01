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
	
	<?php if (!empty($this->session->flashdata('status'))): ?>
		<div class="alert alert-warning">
			<?= $this->session->flashdata('status') ?>
		</div>
	<?php endif ?>
	
	<div class="row pt-5">
		<table class="container col-md-9 table table-striped">
		<thead>
			<tr>
				<th>No</th>
				<th>Nama Member</th>
				<th>No. Telp</th>
				<th>Alamat</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<tbody>
		<?php 
		$i=1;
		foreach ($data as $d) :?>
			<tr>
				<td><?= $i++ ?></td>
				<td><?= $d['nm_member'] ?></td>
				<td><?= $d['tlp_member'] ?></td>
				<td><?= $d['alamat_member'] ?></td>
				<td>
					<a href="<?php echo site_url('App_controller/CEditMember/'.$d['id_member']) ?>" class="btn btn-outline-warning">Ubah </a>
					<a href="<?php echo site_url('App_controller/CHapusMember/' . $d['id_member']) ?>" class="btn btn-outline-danger" onclick="return confirm('Yakin ingin menghapus')"> Hapus</a>
				</td>
			</tr>
		<?php endforeach ?>
		</tbody>
		</table>
	</div>
	<div class="row">
		<div class="container col-md-9">
			<a href="<?php echo site_url('App_controller/CTambahMember') ?>" class="btn btn-success"> Tambah Member</a>
		</div>
	</div>
<?php else: ?>
	<?php $this->load->view('VLogin') ?>
<?php endif ?>
<script type="text/javascript" src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>
</body>
</html>
