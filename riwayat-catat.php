<?php include "header.php"; 

  $filterPemakaian = !empty(@$_GET['filterTagihan']) ? "" . $_GET['filterTagihan'] : "" ;
  $filterPemakaian = urlencode($filterPemakaian);
  $filterPencatat = !empty(@$_GET['pencatat']) ? '' . $_GET['pencatat']. '' : "" ;
  $filterPencatat = urlencode($filterPencatat);
  $filterPeriode = !empty(@$_GET['periode']) ? '' . $_GET['periode']. '' : "" ;
  $filterPeriode = urlencode($filterPeriode);
  
  $file = file_get_contents("http://server/kasir/api/riwayat_catat.php?filterTagihan=$filterPemakaian&pencatat=$filterPencatat&periode=$filterPeriode&submit=");
  $json = json_decode($file, true);

?>

<div class="preloader"><span class="preloader-js">
  <img src="images/loading.gif" alt="" style="    width: 50%;
    margin: auto;
    display: block;
    margin-top: 10rem;">
</span></div>

<!-- Modal -->
<div class="modal fade" data-bs-backdrop="static" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <form method="GET" method="http://server/kasir/api/riwayat_catat.php">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Input Baru</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <fieldset>
            <label for="">Tagihan</label>
            <select class="form-control" name="filterTagihan">
              <option value="">- Semua -</option>
              <option value=" ( a.meter_akhir - a.meter_awal ) > 40 ">Besar > 40</option>
              <option value=" ( a.meter_akhir - a.meter_awal ) < 0 ">Minus</option>
              <option value=" ( a.meter_akhir - a.meter_awal ) <= 5 ">0 - 5 m3</option>
            </select>

            <br>

            <label for="">Pencatat</label>
            <select class="form-control" name="pencatat">
              <option value="">- Semua -</option>
              <option value="Wahyudi">Wahyudi</option>
              <option value="Darmansyah">Darmansyah</option>
              <option value="Karno">Karno</option>
              <option value="Imam">Imam</option>
            </select>

            <br>

            <label for="">Periode</label>
            <input class="form-control" type="month" id="start" name="periode" min="" value="<?= date('Y-m') ?>">

          </fieldset>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
          <button type="submit" name="simpan" class="btn btn-primary">Filter</button>
        </div>
      </div>
    </form>
  </div>
</div>


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
        <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">
          <h4 class="text-dark text-end">Filter  </h4>
        </a>
      <?php endif; ?>
    </div>

  </div>

    <div class="row mt-5">
      <div class="col-12 col-md-12">

        <div class="card shadow">
          <div class="card-header">
            <h5 class="text-center">Riwayat Catat</h5>
          </div>
          <div class="card-body" style="overflow:scroll;">
            <table class="table table-bordered table-hover table-striped table-sm">
              <thead>
              <tr>
                  <th>No</th>
                  <th>Periode</th>
                  <th>Nama</th>
                  <th>Alamat</th>
                  <th>Awal</th>
                  <th>Akhir</th>
                  <th>Pemakaian</th>
                  <th>Pencatat</th>
                  <th>No Telp</th>
              </tr>
              </thead>
              <tbody>
                <?php $i=1; foreach($json as $no => $data): ?>
                  <tr>
                    <td><?php echo $i++; ?></td>
                    <td><?php echo date('M-Y', strtotime($data['tanggal_catat'])) ?></td>
                    <td><a href="http://192.168.100.32/kasir/api_v3.php?view=true&id=<?= $data['id'] ?>/" target="_blank"><?php echo $data['nama']; ?></a></td>
                    <td><?php echo $data['alamat']; ?></td>
                    <td><?php echo $data['meter_awal']; ?></td>
                    <td><?php echo $data['meter_akhir']; ?></td>
                    <td><?php echo $data['pemakaian'];?> m3</td>
                    <td><?php echo $data['dicatat_oleh']; ?></td>
                    <td><?php echo $data['no_telp']; ?></td>
                  </tr>
                <?php endforeach;?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

</div>

<script>
      //after window is loaded completely 
      window.onload = function(){
          //hide the preloader
          document.querySelector(".preloader").style.display = "none";
      }
  </script>

<?php include "footer.php"; ?>  