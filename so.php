<?php include "header.php"; 

$so = $conn->query('SELECT * FROM t_so');

if( isset($_GET['id_so']) ){

	$id_so = $_GET['id_so'];

	$so_detail = $conn->query('SELECT * FROM t_so_detail LEFT JOIN m_barang ON t_so_detail.id_barang = m_barang.id_barang WHERE id_so = '.$id_so.' ');

}

if( isset($_POST['submit']) ){

	$no_so = "SO".date('dmY');

	$conn->query("INSERT INTO t_so (no_so) VALUES ('$no_so') ");

	$last_id = $conn->query("SELECT max(id_so) as id FROM `t_so`");
	$last_id = $last_id->fetch_array();
	$last_id = $last_id['id'];

	for($i = 0; count($_POST['system_stock']) > $i; $i++){

		$system_stock = $_POST['system_stock'][$i];
		$real_stock = $_POST['real_stock'][$i];
		$id_barang = $_POST['id_barang'][$i];
		$gap_stock = $_POST['real_stock'][$i] - $_POST['system_stock'][$i]; 

		$conn->query("INSERT INTO t_so_detail (`id_so`, `id_barang`, `system_stock`, `real_stock`, `gap_stock`) VALUES ($last_id, $id_barang, $system_stock, $real_stock, $gap_stock) ");

	}

}


?>

<div class="container my-5">
	<div class="row">
		<div class="col-6 col-md-6">
			<?php if( isset($_GET['id_so']) OR isset($_GET['add']) ) : ?>
				<a href="so.php">
					<h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
				</a>
			<?php else: ?>
				<a href="index.php">
					<h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
				</a>
			<?php endif; ?>
			
		</div>

		<div class="col-6 col-md-6">
			<?php if( !isset($_GET['id_so']) AND !isset($_GET['add']) ) : ?>
				<a href="so.php?add">
					<h4 class="text-dark text-end">Tambah Baru <img src="images/back.png" width="32px" alt="" style="transform: rotate(180deg);"> </h4>
				</a>
			<?php endif; ?>
		</div>

	</div>

	<?php if( !isset($_GET['id_so']) AND !isset($_GET['add']) ) : ?>
		<div class="row mt-5">
			<div class="col-12 col-md-12">
				<div class="card shadow">
					<div class="card-header">
						<h5 class="text-center">Data Stock Opname</h5>
					</div>
					<div class="card-body">
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th>No</th>
									<th>Kode Stock Opname</th>
									<th>Tanggal Dibuat</th>
								</tr>
							</thead>
							<tbody>
								<?php $i = 1; while($data = $so->fetch_array()): ?>
									<tr>
										<td><?= $i++ ?></td>
										<td><a href="so.php?id_so=<?= $data['id_so'] ?>"> <?= $data['no_so'] ?> </a></td>
										<td><?= date('d-m-Y', strtotime($data['tanggal_so'])) ?></td>
									</tr>
								<?php endwhile;?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	<?php endif ; ?>

	<?php if(isset($_GET['id_so'])) : ?>
		<!-- Add New SO -->
		<div class="row mt-5">
			<div class="col-md-12 col-12">
				<div class="card shadow">
					<div class="card-header">
						<h5 class="text-center">Stock Opname</h5>
					</div>
					<div class="card-body">
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>No</th>
										<th>Barang</th>
										<th>Stock System</th>
										<th>Stock Gudang</th>
										<th>Gap Stock</th>
									</tr>
								</thead>
								<tbody>
									<?php $i = 1; while ($row = $so_detail->fetch_array()) : ?>
										<tr>
											<td><?= $i++ ?></td>
											<td class="small"> <?= $row['nama_barang'] ?> </td>
											<td align="right"> <?= number_format($row['system_stock']) ?></td>
											<td align="right"><?= number_format($row['real_stock']) ?></td>
											<td align="right"><?= number_format($row['gap_stock']) ?></td>
										</tr>
									<?php endwhile; ?>
								</tbody>
							</table>
					</div>
				</div>
			</div>
		</div>
	<?php endif; ?>

	<?php if(isset($_GET['add'])) : ?>
		<!-- Add New SO -->
		<div class="row mt-5">
			<div class="col-md-12 col-12">
				<div class="card shadow">
					<div class="card-header">
						<h5 class="text-center">Stock Opname</h5>
					</div>
					<div class="card-body">
						<form action="" method="POST">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>No</th>
										<th>Barang</th>
										<th>Stock System</th>
										<th>Stock Gudang</th>
									</tr>
								</thead>
								<tbody>
									<?php $i = 1; while ($row = $barang->fetch_array()) : ?>
										<tr>
											<td><?= $i++ ?></td>
											<td class="small">
												<?= $row['nama_barang'] ?>
												<input type="hidden" name="id_barang[]" value="<?=$row['id_barang']?>">
											</td>
											<td align="right">
												<?= number_format($row['last_stock']) ?>
												<input type="hidden" name="system_stock[]" value="<?=$row['last_stock']?>">
											</td>
											<td><input type="number" name="real_stock[]" class="w-100" placeholder="0"></td>
										</tr>
									<?php endwhile; ?>
								</tbody>
							</table>

							<button type="submit" name="submit" class="btn btn-primary w-100" onclick="return confirm('sudah sesuai ??')"> Simpan </button>

						</form>
					</div>
				</div>
			</div>
		</div>
	<?php endif; ?>

</div>

<?php include "footer.php"; ?>	