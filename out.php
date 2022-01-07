<?php include "header.php"; 

if (isset($_POST['submit'])) {
  $qty = $_POST['qty'];

  $id_barang = $_POST['id_barang'];
  $qty = $_POST['qty'];

  $q = $conn->query("INSERT INTO `m_barang_pengeluaran` (`id_barang`, `qty`, `input_date`) VALUES ($id_barang, $qty, current_timestamp()) ");

  $qq = $conn->query(" UPDATE m_barang SET last_stock = last_stock - $qty WHERE id_barang = $id_barang ");

  if($q){
    header("Location: out.php?alert=success");
  }

}


?>

    <div class="container mt-5 mb-5">

      <div class="row my-5">
        <div class="col-md-6 col-6">
          <a href="index.php">
            <h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
          </a>
        </div>

        <div class="col-md-6 col-6">
          <a href="out_history.php">
            <h4 class="text-dark text-end">Riwayat <img src="images/back.png" width="32px" alt="" style="transform: rotate(180deg);"> </h4>
          </a>
        </div>
      </div>

      <?php if(@$_GET['alert'] == 'success'): ?>
      <div class="alert alert-success" role="alert">
          Tersimpan
        </div>
      <?php endif; ?>

      <div class="row">
        <div class="col-md-6 col-12">
          <div class="card shadow mb-5">
            <div class="card-header">
              <div class="row">
                <div class="col-md-12">
                  <h3 class="text-center">Pengeluaran Barang</h3>
                </div>
              </div>
            </div>
            <div class="card-body">
              <form action="" method="POST">
                <div class="row">
                  <div class="col-md-12">
                    <label for=""> Nama Barang </label>
                  </div>
                  <div class="col-md-12">
                    <select name="id_barang" class="form-control" required>
                      <option value="">- Pilih -</option>
                      <?php while ($row = $barang->fetch_array()) {
                            echo '<option value="'.$row["id_barang"].'">'.$row["nama_barang"].'. ('.$row["last_stock"].') </option>';
                        } ?>
                    </select>
                  </div>

                  <div class="col-md-12 mt-4">
                    <label for=""> Qty Barang </label>
                  </div>
                  <div class="col-md-12">
                    <input type="number" name="qty" class="form-control" placeholder="0" required>
                  </div>

                  <div class="col-md-12 mt-5">
                    <button type="submit" name="submit" class="btn btn-primary w-100" onclick="return confirm('Sudah OK');">Simpan</button>
                  </div>  
              </div>
              </form>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-12">
          <div class="card shadow mt-5 mt-md-0">
            <div class="card-header">
              <h3 class="text-center">Barang yang sudah keluar</h3>
            </div>
            <div class="card-body">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Qty</th>
                    <th>Tanggal</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 0; while ($row = $pengeluaran_barang->fetch_array()) : ?>
                  <tr>
                    <td><?= $no+1 ?></td>
                    <td><?= $row['nama_barang'] ?></td>
                    <td><?= $row['qty'] ?></td>
                    <td><?= date('d-M-Y H:i:s', strtotime($row['input_date'])) ?></td>
                  </tr>
                  <?php $no++; ?>
                  <?php endwhile ;?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        
      </div>

    </div>

<?php include "footer.php"; ?>