<?php 

$conn = new mysqli('localhost', 'root', '', 'warehouse2');

if( !$conn ){
	mysqli_connect_error();
}

$barang = $conn->query("SELECT * FROM `m_barang` WHERE is_delete = 'N' and id_category = 1 ORDER BY `m_barang`.`id_barang` ASC ");

$pengeluaran_barang = $conn->query("SELECT a.qty, a.input_date, b.nama_barang FROM `m_barang_pengeluaran` a LEFT JOIN m_barang b ON a.id_barang = b.id_barang WHERE date(input_date) = curdate() ");

 ?>