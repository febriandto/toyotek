<?php include "header.php"; 


$countBarang = 0;
$dataBarang = [];
while($barangs = $barang->fetch_array()){

	if( $barangs['last_stock'] < 5 ){
	
		$countBarang++;
		$dataBarang['nama_barang'][] = $barangs['nama_barang'];
		$dataBarang['last_stock'][] = $barangs['last_stock'];
	
	}

}

?>

<div class="container my-5">
	<div class="row">
		<div class="col-md-12">
			<h2 class="text-center">Menu</h2>
		</div>
	</div>

	<?php if( $countBarang != 0 ): ?>
	<div class="card mt-4 shadow">
		<div class="card-body">
			<?php foreach($dataBarang as $key => $data) : ?>
			<div class="alert alert-danger mb-0">
				<p class="mb-0"><?= $dataBarang['nama_barang'][2] ?> tinggal <b>5</b> </p>
			</div>
			<?php endforeach; ?>
		</div>
	</div>
	<?php endif; ?>


	<div class="row mt-5">
		<div class="col-md-4 col-6">
			<a href="out.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/box.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Pengeluaran Barang</p>
				</div>
			</a>
		</div>

		<div class="col-md-4 col-6">
			<a href="so.php">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/so.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Stock Opname</p>
				</div>
			</a>
		</div>

		<div class="col-md-4 col-6 mt-md-0 mt-4">
			<a href="kimia.php" id="kimias">
				<div class="" style="padding:10px;width: 97%;height: 200px;border-radius: 10px;background: #ffffff;    box-shadow: 0px 0px 10px 5px #0000000f;margin: auto;">
					<img src="images/tube.png?v=1" width="85px" alt="" class="d-block mt-3 mx-auto">
					<p class="text-center mt-4 fw-bold small">Pemakaian Kimia</p>
				</div>
			</a>
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
	
	var kimia = document.getElementById('kimia');

	kimia.onclick = function(){

		var con = prompt("Masukan Kata Sandi");

		if(con == "admin123@"){
			return true;
		}else{
			alert("Kata Sandi Salah!!");
			return false;
		}

	};

</script>


<?php include "footer.php"; ?>