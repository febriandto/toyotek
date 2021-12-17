<?php include "header.php"; 


if(isset($_POST['submit'])){

	$jenis_pekerjaan = $_POST['jenis_pekerjaan'];
	$alamat = $_POST['alamat'];
	$telp = $_POST['telp'];

	$insert = $conn->query(" INSERT INTO t_spk (jenis_pekerjaan, alamat, telp, input_by) VALUES ('$jenis_pekerjaan', '$alamat', '$telp', '$_SERVER[REMOTE_ADDR]') ");

	if($insert){
		header("Location: spk.php?alert=success");
	}else{
		header("Location: spk.php?alert=danger");
	}


}

$all = $conn->query(" SELECT * FROM t_spk WHERE is_delete = 'N' ");


?>


<style>
	.card{
		font-size: small;
	}
</style>

<div class="container mt-5 mb-5">

	<div class="row my-5">

	<?php if(!isset($_GET['all_data'])) : ?>
		<div class="col-md-6 col-6">
			<a href="index.php">
				<h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
			</a>
		</div>
	<?php else: ?>
		<div class="col-md-6 col-6">
			<a href="spk.php">
				<h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
			</a>
		</div>
	<?php endif; ?>

		<?php if(!isset($_GET['all_data'])) : ?>
			<div class="col-md-6 col-6">
					<a href="spk.php?all_data">
						<h4 class="text-dark text-end">Riwayat <img src="images/back.png" width="32px" alt="" style="transform: rotate(180deg);"> </h4>
					</a>
			</div>
		<?php endif; ?>

	</div>

	<?php if(@$_GET['alert'] == 'success'): ?>
	<div class="alert alert-success" role="alert">
			Tersimpan
		</div>
	<?php endif; ?>

	<?php if(@$_GET['alert'] == 'danger'): ?>
	<div class="alert alert-danger" role="alert">
			Gagal
		</div>
	<?php endif; ?>

  <div class="row">
    <div class="col-md-12">
      <div class="card shadow">
        <div class="card-header">
					<h3 class="text-center">Surat Perintah Kerja</h3>
				</div>
				<div class="card-body">

				<?php if(!isset($_GET['all_data'])) : ?>
					<form action="" method="POST">
						<div class="row">
							<div class="col-md-7 offset-md-2">
								<p align="center">PENGOLAHAN AIR BERSIH Perum Budi Mustika - Tigaraksa <br>  Office : Perum Budi Mustika Tigaraksa Blok C01/12A Telp. 0812-9803-6503</p>
								<p align="center">Surat Perintah Kerja</p>
							</div>
							<div class="col-md-12">
								<table style="width:100%;">
									<tr>
										<th align="left" width="20%">Jenis Pekerjaan</th>
										<th width="1%">:</th>
										<th style="text-align: center;border-bottom: 1px solid black;">
											<input type="text" name="jenis_pekerjaan" class="form-control form-control-sm" required>
										</th>
									</tr>
									<tr>
										<th align="left" width="25%">Alamat</th>
										<th width="1%">:</th>
										<th style="text-align: center;border-bottom: 1px solid black;">
											<input type="text" name="alamat" class="form-control form-control-sm" required>
										</th>
									</tr>
									<tr>
										<th align="left" width="20%">No Telephone</th>
										<th width="1%">:</th>
										<th style="text-align: center;border-bottom: 1px solid black;">
										<input type="tel" name="telp" class="form-control form-control-sm">
										</th>
									</tr>
								</table>
							</div>
						</div>

						<div class="text-end mt-3">
							<button type="submit" name="submit" onclick="return confirm('Buat??')" class="btn btn-success btn-sm">Buat</button>
						</div>
					</form>
				<?php else: ?>
					<table class="table table-bordered table-hover table-striped w-100 table-sm">
						
						<thead>
							<tr>
								<th>No</th>
								<th>Jenis Pekerjaan</th>
								<th>Alamat</th>
								<th>Telephone</th>
								<th>Tanggal</th>
								<th>Dibuat Oleh</th>
							</tr>
						</thead>

						<thead>
							<?php $i = 1; while($row = $all->fetch_array()) : ?>
								<tr>
									<td><?= $i++ ?></td>
									<td><?= $row['jenis_pekerjaan'] ?></td>
									<td><a target="_blank" href="spk_print.php?id_spk=<?= $row['id_spk'] ?>"> <?= $row['alamat'] ?> </a></td>
									<td><?= $row['telp'] ?></td>
									<td><?= date('d-m-Y', strtotime($row['input_date'])) ?></td>
									<td><?= $row['input_by'] ?></td>
								</tr>
							<?php endwhile; ?>
						</thead>

					</table>
				<?php endif; ?>

				</div>
      </div>
    </div>
  </div>
</div>

<?php include "footer.php"; ?>