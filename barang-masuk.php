<?php include "header.php"; 

$barangs = $conn->query("SELECT * FROM `m_barang` WHERE is_delete = 'N' and id_category = 1 ORDER BY `m_barang`.`id_barang` ASC ");
$barang_masuk = $conn->query("SELECT * FROM t_barang_masuk");

if(isset($_GET['detail'])){

  $barang_masuk_item = $conn->query(" SELECT * FROM t_barang_masuk_item LEFT JOIN m_barang ON t_barang_masuk_item.id_barang = m_barang.id_barang WHERE id_barang_masuk = $_GET[detail] ");
  $barang_masuk = $conn->query("SELECT * FROM t_barang_masuk WHERE id_barang_masuk = $_GET[detail] ");
  $barang_masuk = $barang_masuk->fetch_array();

}else{
  $barang_masuk_item = $conn->query(" SELECT * FROM t_barang_masuk_item LEFT JOIN m_barang ON t_barang_masuk_item.id_barang = m_barang.id_barang WHERE id_barang_masuk = -1 ");
}

if( isset($_POST['submit']) ){

  $id_barang = $_POST['id_barang'];
  $qty = $_POST['qty'];
  $keterangan = $_POST['keterangan'];
  $tanggal = date('Y-m-d');

  $t_barang_masuk = $conn->query("INSERT INTO `t_barang_masuk` (`id_barang_masuk`, `tanggal`, `keterangan`, `is_lock`, `input_by`, `input_date`) VALUES (NULL, current_timestamp(), '$keterangan', '-', 'TSM Apps', current_timestamp()); ");

  $id = $conn->query("SELECT max(id_barang_masuk) as id FROM `t_barang_masuk`");
  $id = $id->fetch_array();
  $id = $id['id'];

  foreach($id_barang as $key => $value){

    $t_barang_masuk_item = $conn->query(" INSERT INTO `t_barang_masuk_item` (`id_barang_masuk`, `id_barang`, `warna`, `size`, `qty`) VALUES ($id, $id_barang[$key], '-', '-', $qty[$key]) ");

    $add = $conn->query("UPDATE m_barang SET last_stock = last_stock + $qty[$key] WHERE id_barang = $id_barang[$key] ");

  }

  if($t_barang_masuk){
    header("Location: barang-masuk.php?alert=success");
  }

}

?>

    <div class="container mt-5 mb-5">

      <div class="row my-5">
        <div class="col-md-6 col-6">
          <a href="<?= isset($_GET['detail']) ? 'barang-masuk.php' : 'index.php' ?>">
            <h4 class="text-dark"> <img src="images/back.png" width="32px" alt=""> Kembali</h4>
          </a>
        </div>

        <div class="col-md-6 col-6 d-none">
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

        <?php if(!isset($_GET['detail'])): ?>

          <div class="col-md-6 col-12">
            <div class="card shadow mb-5">
              <div class="card-header">
                <div class="row">
                  <div class="col-md-12">
                    <h3 class="text-center">Barang Masuk</h3>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <form action="" method="POST">
                  <div class="row">

                    <div class="col-md-12 mb-3">
                      <label>Keterangan</label>
                      <input type="text" name="keterangan" id="" class="form-control" required>
                    </div>

                  <div class="col-md-12 col-12" id="recive">

                    <div class="row border-bottom p-2">
                      
                      <div class="col-md-6 col-6">
                        <label for=""> Nama Barang </label>
                        <select name="id_barang[]" id="id_barang" class="form-control" required>
                          <option value="">- Pilih -</option>
                          <?php while ($row = $barang->fetch_array()) {
                                echo '<option value="'.$row["id_barang"].'">'.$row["nama_barang"].'. ('.$row["last_stock"].') </option>';
                            } ?>
                        </select>
                      </div>

                      <div class="col-md-6 col-6">
                        <div class="row">
                          <div class="col-md-12">
                            <label for=""> Qty Barang </label>
                          </div>
                          <div class="col-md-12">
                            <input type="number" name="qty[]" class="form-control" placeholder="0" required>
                          </div>
                        </div>
                      </div>

                    </div>

                  </div>

                  <div class="col-12 col-md-12 mt-3">
                    <button type="button" class="btn btn-success btn-sm" onclick="tambah(this)"> + Tambah</button>
                  </div>


                  <div class="col-md-12 mt-5">
                    <button type="submit" name="submit" class="btn btn-primary w-100" onclick="return confirm('Simpan ? ini akan mempengaruhi stock system');">Simpan</button>
                  </div>  
                </div>
                </form>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-12">
            <div class="card shadow mt-5 mt-md-0">
              <div class="card-header">
                <h3 class="text-center">Riwayat Barang Masuk</h3>
              </div>
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Keterangan</th>
                      <th>Tanggal</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; while ($row = $barang_masuk->fetch_array()) : ?>
                    <tr>
                      <td><?= $no+1 ?></td>
                      <td> <a href="barang-masuk.php?detail=<?=$row['id_barang_masuk']?>"> <?= $row['keterangan'] ?> </a> </td>
                      <td><?= date('d-M-Y H:i:s', strtotime($row['input_date'])) ?></td>
                    </tr>
                    <?php $no++; ?>
                    <?php endwhile ;?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        <?php else: ?>

        <div class="col-md-6 col-12">
          <div class="card">
            <div class="card-header text-center">
             <h6><?= $barang_masuk['keterangan'] ?> - <span class="badge bg-secondary"> <?= date('d-m-Y', strtotime($barang_masuk['input_date'])) ?> </span></h6>
            </div>
            <div class="card-body">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama Barang</th>
                  <th>Qty</th>
                </tr>
              </thead>
              <tbody>
                <?php $i = 1; while( $row = $barang_masuk_item->fetch_array() ): ?>
                  <tr>
                    <td><?= $i++; ?></td>
                    <td><?= @$row['nama_barang'] ?></td>
                    <td><?= @$row['qty'] ?></td>
                  </tr>
                <?php endwhile; ?>
              </tbody>
            </table>
            </div>
          </div>
        </div>

        <?php endif; ?>

      </div>

    </div>

<div id="source" style="display:none;">
  <div class="row border-bottom p-2">
                    
    <div class="col-md-6 col-6">
      <label for=""> Nama Barang </label>
      <select name="id_barang[]" id="id_barang" class="form-control" required>
        <option value="">- Pilih -</option>
        <?php while ($row = $barangs->fetch_array()) {
              echo '<option value="'.$row["id_barang"].'">'.$row["nama_barang"].'. ('.$row["last_stock"].') </option>';
          } ?>
      </select>
    </div>

    <div class="col-md-4 col-4">
      <div class="row">
        <div class="col-md-12">
          <label for=""> Qty Barang </label>
        </div>
        <div class="col-md-12">
          <input type="number" name="qty[]" class="form-control" placeholder="0" required>
        </div>
      </div>
    </div>

    <div class="col-md-2 col-2 align-self-center">
      <div class="row">
        <div class="col-md-12 align-self-center">
          <button type="button" class="btn btn-danger" onclick="hapus(this);">X</button>
          <br>
        </div>
      </div>
    </div>

  </div>
</div>

<script>

  function tambah(obj){

    var source = $('#source').html();

    $("#recive").append(source);

  }

  function hapus(obj){
    $(obj).parent().parent().parent().parent().remove();
  }

</script>

<?php include "footer.php"; ?>