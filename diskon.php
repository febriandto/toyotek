<?php include "header.php"; 

?>

    <div class="container mt-5 mb-5">

      <div class="row my-5">
        <div class="col-md-6 col-6">
          <a href="index.php">
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
        <div class="col-md-6 offset-md-3 col-12">
          <div class="card shadow mb-5">
            <div class="card-header">
              <div class="row">
                <div class="col-md-12">
                  <h3 class="text-center">Kalkulator Diskon</h3>
                </div>
              </div>
            </div>
            <div class="card-body">
            <form action="print-diskon.php" method="POST">
            <div class="">
                <div class="col-md-12">
                    <label> Alamat Blok </label>
                    <input type="text" class="form-control" name="alamat_blok">
                    <br>
                    
                    <label>Tagihan Bocor (M3)</label>
                    <input type="number" class="form-control" name="tagihan">
                    <br>
                    
                    <label>Golongan</label>
                    <select class="form-control" name="golongan">
                        <option value="1A">Golongan 1A</option>
                        <option value="1B">Golongan 1B</option>
                        <option value="2">Golongan 2</option>
                        <option value="3">Golongan 3</option>
                        <option value="4">Golongan 4</option>
                    </select>
                    <br>
                    
                    <label>Pemakaian Normal Rata-Rata (M3)</label>
                    <input type="number" class="form-control" name="pemakaian_normal">
                    <br>
                    
                    <button class="btn btn-primary" value="submit" type="submit" name="submit">Hitung</button>
                </div>
            </div>
      </form>
            </div>
          </div>
        </div>
        
      </div>

    </div>

<?php include "footer.php"; ?>