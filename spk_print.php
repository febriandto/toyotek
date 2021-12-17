<?php include "conn.php"; 

$data = $conn->query("SELECT * FROM t_spk WHERE id_spk = $_GET[id_spk] ");
$data = $data->fetch_array();

?>

<style>
	*{
		font-family: sans-serif;
	}
</style>

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
					<th style="text-align: center;border-bottom: 1px solid black;"> <?= $data['jenis_pekerjaan'] ?> </th>
				</tr>
				<tr>
					<th align="left" width="25%">Alamat</th>
					<th width="1%">:</th>
					<th style="text-align: center;border-bottom: 1px solid black;"> <?= $data['alamat'] ?> </th>
				</tr>
				<tr>
					<th align="left" width="20%">No Telephone</th>
					<th width="1%">:</th>
					<th style="text-align: center;border-bottom: 1px solid black;"> <?= $data['telp'] ?> </th>
				</tr>
				<tr>
					<th> Tigaraksa,  <?= date('d/m/Y', strtotime($data['input_date'])) ?></th>
					<th></th>
					<th></th>
				</tr>
			</table>

			<br>
			<br>

			<table style="width:100%;">
				<tr align="center">
					<td width="33.3%">(   Karno   )</td>
					<td width="33.3%">(   Febri   )</td>
					<td width="33.3%">(   Pemilik Rumah   )</td>
				</tr>
			</table>

			<table  style="width:100%;margin-top: 50px;">
				<tr>
					<th width="50%"></th>
					<th width="50%" style="text-align:right;">Dikerjakan Tanggal : _______________</th>
				</tr>
				<tr>
					<th width="50%"></th>
					<th width="50%" style="text-align:right;">
						<table style="width:100%;text-align: center;border: 1px solid black;" border="1">
							<tr>
								<th>Petugas</th>
								<th>Pemilik Rumah</th>
							</tr>
							<tr>
								<th> <br><br><br><br> </th>
								<th></th>
							</tr>
						</table>
					</th>
				</tr>
			</table>
		</div>
	</div>