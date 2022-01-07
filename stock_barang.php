<?php include "header.php"; 


$all = $conn->query(" SELECT * FROM m_barang WHERE is_delete = 'N' AND id_category = 1 ");


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
			<div class="col-md-6 col-6 d-none">
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
					<h3 class="text-center">Stock Barang</h3>
				</div>
				<div class="card-body">

					<table class="table table-bordered table-hover table-striped">
						
						<thead>
							<tr>
								<th>No</th>
								<th>Barang</th>
								<th>Stock</th>
							</tr>
						</thead>

						<body>
							<?php $i = 1; while($row = $all->fetch_array()) : ?>
								<tr>
									<td><?= $i++ ?></td>
									<td><?= $row['nama_barang'] ?></td>
									<td align="right"><?= number_format($row['last_stock']) ?></td>
								</tr>
							<?php endwhile; ?>
						</body>

					</table>

				</div>
      </div>
    </div>
  </div>
</div>

<?php include "footer.php"; ?>