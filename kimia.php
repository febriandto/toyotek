<?php include "header.php"; 


  $data = $conn->query("SELECT sum(qty_pac) as qty_pac, sum(qty_kaporit) as qty_kaporit, date(in_date) as periode FROM `t_pemakaian_kimia` GROUP BY year(in_date), month(in_date)");

  if(isset($_GET['periode'])){

    $date = $_GET['periode'];

    $detail = $conn->query(" SELECT * FROM `t_pemakaian_kimia` WHERE month(in_date) = month('$date') and year(in_date) = year('$date') ");

  }

  if(isset($_POST['simpan'])){

    $petugas = $_POST['petugas'];
    $qty_pac = $_POST['qty_pac'];
    $qty_kaporit = $_POST['qty_kaporit'];
    $in_date = $_POST['in_date'];
    $out_date = $_POST['out_date'];

    $save = $conn->query("INSERT INTO `t_pemakaian_kimia` (`id_pk`, `petugas`, `id_pac`, `qty_pac`, `id_kaporit`, `qty_kaporit`, `in_date`, `out_date`, `input_date`, `is_delete`) VALUES (NULL, '$petugas', NULL, '$qty_pac', NULL, '$qty_kaporit', '$in_date', '$out_date', current_timestamp(), 'N');");

    if($save){
      header("Location: kimia.php?alert=success&periode=$in_date");
    }else{
      header("Location: kimia.php?alert=danger");
    }

  }


?>

<!-- Modal -->
<div class="modal fade" data-bs-backdrop="static" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <form method="POST" action="">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Input Baru</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          
          <label for="petugas">Petugas</label>
          <input type="text" id="petugas" name="petugas" class="form-control" placeholder="Nama Petugas">

          <br><hr><br>

          <label for="qty_pac">Qty PAC</label>
          <input type="number" id="qty_pac" name="qty_pac" class="form-control" placeholder="0">

          <br>

          <label for="qty_kaporit">Qty Kaporit</label>
          <input type="number" step="any" id="qty_kaporit" name="qty_kaporit" class="form-control" placeholder="0">

          <br><hr><br>

          <label for="in_date">Tanggal Masuk</label>
          <input type="datetime-local" id="in_date" name="in_date" class="form-control">

          <br>

          <label for="out_date">Tanggal Keluar</label>
          <input type="datetime-local" id="out_date" name="out_date" class="form-control">

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
          <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
        </div>
      </div>
    </form>
  </div>
</div>

    <div class="container mt-5 mb-5">

      <div class="row my-5">
        
        <div class="col-md-6 col-6">
          <?php if(isset($_GET['periode'])) :?>
          <a href="kimia.php">
            <h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
          </a>
          <?php endif;?>
          <?php if(!isset($_GET['periode'])) :?>
          <a href="index.php">
            <h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
          </a>
          <?php endif;?>
        </div>

        <div class="col-md-6 col-6">
          <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">
            <h4 class="text-dark text-end">Input <img src="images/back.png" width="32px" alt="" style="transform: rotate(180deg);"> </h4>
          </a>
        </div>

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
      <div class="col-md-12 col-12">
        <div class="card shadow mb-5">
          <div class="card-header">
            <div class="row">
              <div class="col-md-12">
                <h3 class="text-center">Detail Pemakaian Kimia</h3>
              </div>
            </div>
          </div>
          <div class="card-body">
            <?php if(!isset($_GET['periode'])): ?>
            <table class="table table-bordered table-hover table-striped">
              <thead>
                <tr>
                  <th rowspan="2" style="vertical-align: middle;text-align: center;">No</th>
                  <th rowspan="2" style="text-align: center;vertical-align: middle;">Periode</th>
                  <th colspan="2" class="text-center">Total Qty</th>
                </tr>
                <tr>
                  <th class="text-center">PAC</th>
                  <th class="text-center">Kaporit</th>
                </tr>
              </thead>

              <tbody>
                <?php $i = 1; while($row = $data->fetch_array()) : ?>
                  <tr>
                    <td><?= $i++; ?></td>
                    <td>
                      <a href="kimia.php?periode=<?= date('Y-m-d', strtotime($row['periode'])); ?>"> <?= date('F Y', strtotime($row['periode'])); ?> </a>
                    </td>
                    <td><?= $row['qty_pac'] ?> Sak</td>
                    <td><?= $row['qty_kaporit'] ?> Kg</td>
                  </tr>
                <?php endwhile; ?>
              </tbody>
            </table>
            <?php else : ?>
              <table class="table table-bordered table-hover table-striped table-sm">
                <thead>
                  <tr>
                    <th rowspan="2" style="vertical-align: middle;text-align: center;">No</th>
                    <th rowspan="2" style="text-align: center;vertical-align: middle;">Petugas</th>
                    <th colspan="2" class="text-center">Qty</th>
                    <th colspan="2" class="text-center">Tanggal</th>
                  </tr>
                  <tr>
                    <th class="text-center">PAC</th>
                    <th class="text-center">Kaporit</th>
                    <th class="text-center">Masuk</th>
                    <th class="text-center">Keluar</th>
                  </tr>
                </thead>

                <tbody>
                  <?php $j = 1; while( $row = $detail->fetch_array() ) : ?>
                  <tr>
                    <td><?= $j++; ?></td>
                    <td><?= $row['petugas']; ?></td>
                    <td><?= $row['qty_pac'] ?> Sak</td>
                    <td><?= $row['qty_kaporit'] ?> Kg</td>
                    <td><?= date('d F H:i', strtotime($row['in_date'])) ?></td>
                    <td><?= date('d F H:i', strtotime($row['out_date'])) ?></td>
                  </tr>
                  <?php @$total_pac += $row['qty_pac']; @$total_kaporit += $row['qty_kaporit']; endwhile;?>
                </tbody>

                <tfoot>
                  <tr>
                    <th></th>
                    <th></th>
                    <th><?= $total_pac ?> Sak</th>
                    <th><?= $total_kaporit ?> Kg</th>
                    <th></th>
                    <th></th>
                  </tr>
                </tfoot>
              </table>
            <?php endif; ?>
          </div>
        </div>
      </div>
    </div>

    </div>

<?php include "footer.php"; ?>