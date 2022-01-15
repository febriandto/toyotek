<?php include "header.php"; 


$countBarang = 0;
$dataBarang = [];
while($barangs = $barang->fetch_array()){

	if( $barangs['last_stock'] <= 5 AND ( $barangs['id_barang'] == 1 OR $barangs['id_barang'] == 2 OR $barangs['id_barang'] == 3 OR $barangs['id_barang'] == 4 OR $barangs['id_barang'] == 5 OR $barangs['id_barang'] == 6 OR $barangs['id_barang'] == 7 OR $barangs['id_barang'] == 8 OR $barangs['id_barang'] == 9 ) ){

		$dataBarang[$barangs['id_barang']]['nama_barang'] = $barangs['nama_barang'];
		$dataBarang[$barangs['id_barang']]['last_stock'] = $barangs['last_stock'];
	
	}


}

?>

<div class="container my-5">
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-center fw-bold">
			<img src="logo.png" width="50px" class="" alt=""> TSM Apps</h1>
		</div>
	</div>

	<?php if( count($dataBarang) != 0 ): ?>
	<div class="card mt-4 shadow">
		<div class="card-body">
			<h5 class="mb-3">Barang yang akan habis</h5>
			<?php foreach($dataBarang as $key => $data) : ?>
			<div class="alert alert-danger my-2">
				<p class="mb-0"><?= $data['nama_barang'] ?> <b><?= $data['last_stock'] == 0 ? "habis !" : "tinggal ". $data['last_stock'] ?></b> </p>
			</div>
			<?php endforeach; ?>
		</div>
	</div>
	<?php endif; ?>


	<div class="row mt-5">

		<div class="col-md-12 col-12">
			<h4>Manajemen Barang</h4>
		</div>

		<div class="col-md-4 col-6 mt-md-4 mt-4">
			<a href="stock_barang.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/stock_barang.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Stock Barang</p>
				</div>
			</a>
		</div>

		<div class="col-md-4 col-6 mt-md-4 mt-4">
			<a href="out.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/box.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Pengeluaran Barang</p>
				</div>
			</a>
		</div>

		<div class="col-md-4 col-6 mt-md-4 mt-4">
			<a href="barang-masuk.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/barang-masuk.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Barang Masuk</p>
				</div>
			</a>
		</div>

		<div class="col-md-4 col-6 mt-md-4 mt-4">
			<a href="so.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/so.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Stock Opname</p>
				</div>
			</a>
		</div>

		<div class="col-md-4 col-6 mt-md-4 mt-4">
			<a href="kimia.php" id="kimias">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/tube.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Pemakaian Kimia</p>
				</div>
			</a>
		</div>

		<div class="col-md-12 col-12 mt-5">
			<h4>Tagihan</h4>
		</div>

		<div class="col-md-4 col-6 mt-md-4 mt-4">
			<a href="tagihan_besar_3_bulan.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/tagihan-besar.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Tagihan Diatas 3 Bulan</p>
				</div>
			</a>
		</div>

		<div class="col-md-4 col-6 mt-md-4 mt-4">
			<a href="riwayat-catat.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/riwayat-catat.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Riwayat Catat</p>
				</div>
			</a>
		</div>

		<div class="col-md-12 col-12 mt-5">
			<h4>Lain-lain</h4>
		</div>

		<div class="col-md-4 col-6 mt-md-4 mt-4">
			<a href="spk.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/spk.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Surat Perintah Kerja</p>
				</div>
			</a>
		</div>

	</div>
</div>


<script>
	
	// var kimia = document.getElementById('kimia');

	// kimia.onclick = function(){

	// 	var con = prompt("Masukan Kata Sandi");

	// 	if(con == "admin123@"){
	// 		return true;
	// 	}else{
	// 		alert("Kata Sandi Salah!!");
	// 		return false;
	// 	}

	// };

</script>


<?php include "footer.php"; ?>