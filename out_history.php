<?php include "header.php"; 

  
  $data = $conn->query("SELECT sum(qty) as qty, date(input_date) as date FROM `m_barang_pengeluaran` GROUP BY date(input_date) ORDER BY date(input_date) DESC");

  if (isset($_GET['date'])) {

    $date = $_GET['date'];

    $detail = $conn->query("SELECT a.qty, a.input_date, b.nama_barang FROM `m_barang_pengeluaran` a LEFT JOIN m_barang b ON a.id_barang = b.id_barang WHERE date(input_date) = '$date' ");

  }


?>

    <div class="container mt-5 mb-5">

      <div class="row my-5">
        <div class="col-md-12">
          <?php if(isset($_GET['date'])) :?>
          <a href="out_history.php">
            <h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
          </a>
          <?php endif;?>
          <?php if(!isset($_GET['date'])) :?>
          <a href="out.php">
            <h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
          </a>
          <?php endif;?>
        </div>
      </div>

      <?php if(@$_GET['alert'] == 'success'): ?>
      <div class="alert alert-success" role="alert">
          Tersimpan
        </div>
      <?php endif; ?>

      <div class="row">
        <div class="col-md-12 col-12">
          <div class="card shadow mb-5">
            <div class="card-header">
              <div class="row">
                <div class="col-md-12">
                  <h3 class="text-center">Riwayat Pengeluaran Barang</h3>
                </div>
              </div>
            </div>
            <div class="card-body">

              <?php if(!isset($_GET['date'])): ?>
              <table class="table table-bordered table-hover table-striped">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Tanggal</th>
                    <th>Total Qty</th>
                  </tr>
                </thead>

                <tbody>
                  <?php $i = 1; while($row = $data->fetch_array()): ?>
                    <tr>
                      <td><?= $i++; ?></td>
                      <td>
                        <a href="out_history.php?date=<?= date("Y-m-d", strtotime($row['date'])); ?>">
                          <?= date("d-m-Y", strtotime($row['date'])); ?>
                        </a>
                      </td>
                      <td><?= number_format($row['qty']) ?></td>
                    </tr>
                  <?php endwhile; ?>
                </tbody>
              </table>
            <?php else : ?>
              <table class="table table-bordered table-hover table-striped">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Qty</th>
                    <th>Tanggal</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 0; while ($row = $detail->fetch_array()) : ?>
                  <tr>
                    <td><?= $no+1 ?></td>
                    <td><?= $row['nama_barang'] ?></td>
                    <td><?= $row['qty'] ?></td>
                    <td><?= date('d-m-Y H:i:s', strtotime($row['input_date'])) ?></td>
                  </tr>
                  <?php $no++; ?>
                  <?php endwhile ;?>
                </tbody>
              </table>
            <?php endif; ?>

            </div>
          </div>
        </div>
      </div>

    </div>

<?php include "footer.php"; ?>