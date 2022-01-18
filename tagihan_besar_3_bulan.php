<?php include "header.php"; 

$json = @file_get_contents("http://server/kasir/api/tagihan_besar_3_bulan.php");
if($json === FALSE) {
	echo "<h1 class='text-center mt-5'>SERVER OFFLINE!</h1>";
	exit();
}
$json = json_decode($json, true);

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
			<h3 class="text-center">Tagihan Besar 3 Bulan</h3>
		</div>
		<div class="card-body">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>No</th>
						<th>Alamat</th>
						<th>Total</th>
					</tr>
				</thead>
				<tbody>
					<?php $i=1; foreach( $json as $no => $data ): ?>
						<tr>
							<td><?=$i++?></td>
							<td><?= $data['alamat'] ?></td>
							<td><?= $data['total_bulan'] ?> Bulan</td>
						</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>
      </div>
    </div>
  </div>
</div>

<?php include "footer.php"; ?>