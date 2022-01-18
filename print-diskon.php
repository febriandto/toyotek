<?php include "header.php"; 

if( isset($_POST['submit']) ){
        
    $tagihan = $_POST['tagihan'];
    $pemakaian_normal = $_POST['pemakaian_normal'];
    $golongan = $_POST['golongan'];
    $bocor = $tagihan - $pemakaian_normal;
    $alamat_blok = $_POST['alamat_blok'];
    
    function clac($kubik,$limit1,$limit2,$limit3,$limit4,$limit5){
        
        $temp_harga_tagihan = 0;
        
        // Limit 1
        if($kubik > 0){
            
            if($kubik < 10){
                
                $temp_harga_tagihan = $temp_harga_tagihan + ( $kubik * $limit1 );
                $kubik = $kubik - $kubik;
                
            }else{
                
                $kubik = $kubik - 10;
                $temp_harga_tagihan = $temp_harga_tagihan + ( 10 * $limit1 );
                
            }
            
        }
        // Limit 2
        if($kubik > 0){
            
            if($kubik < 10){
                
                $temp_harga_tagihan = $temp_harga_tagihan + ( $kubik * $limit2 );
                $kubik = $kubik - $kubik;
                
            }else{
                
                $kubik = $kubik - 10;
                $temp_harga_tagihan = $temp_harga_tagihan + ( 10 * $limit2 );
                
            }
            
        }
        // Limit 3
        if($kubik > 0){
            
            if($kubik < 10){
                
                $temp_harga_tagihan = $temp_harga_tagihan + ( $kubik * $limit3 );
                $kubik = $kubik - $kubik;
                
            }else{
                
                $kubik = $kubik - 10;
                $temp_harga_tagihan = $temp_harga_tagihan + ( 10 * $limit3 );
                
            }
            
        }
        // Limit 4
        if($kubik > 0){
            
            if($kubik < 10){
                
                $temp_harga_tagihan = $temp_harga_tagihan + ( $kubik * $limit4 );
                $kubik = $kubik - $kubik;
                
            }else{
                
                $kubik = $kubik - 10;
                $temp_harga_tagihan = $temp_harga_tagihan + ( 10 * $limit4 );
                
            }
            
        }
        // Limit 5
        if($kubik > 0){
            
            $temp_harga_tagihan = $temp_harga_tagihan + ( $kubik * $limit5 );
                
        }
        
        return $temp_harga_tagihan;
    
    }
    
    if( $golongan == "1A" ){
        
        $temp_harga_tagihan = clac($tagihan,2000,2000,2000,2000,2000) ;
        $harga_pemakaian_normal = clac($pemakaian_normal,2000,2000,2000,2000,2000) ;
        $harga_bocor = $bocor*200;

    }
    
    if( $golongan == "1B" ){
        
        $temp_harga_tagihan = clac($tagihan,4200,4700,5200,5700,6200) ;
        $harga_pemakaian_normal = clac($pemakaian_normal,4200,4700,5200,5700,6200) ;
        $harga_bocor = $bocor*4200;

    }
    
    if( $golongan == "2" ){
        
        $temp_harga_tagihan = clac($tagihan,5600,6600,7600,7600,8600) ;
        $harga_pemakaian_normal = clac($pemakaian_normal,5600,6600,7600,7600,8600) ;
        $harga_bocor = $bocor*5600;

    }
    
    if( $golongan == "3" ){
        
        $temp_harga_tagihan = clac($tagihan,6800,7800,8800,9800,9800) ;
        $harga_pemakaian_normal = clac($pemakaian_normal,6800,7800,8800,9800,9800) ;
        $harga_bocor = $bocor*6800;

    }
    
    if( $golongan == "4" ){
        
        $temp_harga_tagihan = clac($tagihan,8500,9700,10900,12100,12100) ;
        $harga_pemakaian_normal = clac($pemakaian_normal,8500,9700,10900,12100,12100) ;
        $harga_bocor = $bocor*8500;

    }
    
    
}

?>

<style>
* {font-size: 12px;}
table{
    width: 95%;
}
table tr{
    border-bottom: 1px solid black;
}
</style>

    <div class="container mt-5 mb-5">

      <div class="row my-5">
        <div class="col-md-6 col-6">
          <a href="diskon.php">
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
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="row">
                        <div class="col-md-12">
                            <h3><?php echo strtoupper($alamat_blok); ?></h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="">
                                <tr>
                                    <th>Tagihan</th>
                                    <td class="text-right"><?php echo $tagihan."m³"; ?> <span class="mx-2">=</span> Rp.<?php echo number_format($temp_harga_tagihan); ?></td>
                                </tr>
                                <tr>
                                    <th>Pemakaian Normal</th>
                                    <td class="text-right" style="position:relative;"><?php echo $pemakaian_normal."m³"; ?>
                                        <span class="mx-2">=</span> Rp.<?php echo number_format($harga_pemakaian_normal); ?>
                                        <span style="position:absolute;right:-15px;bottom:-10px;"> - </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Bocor</th>
                                    <td class="text-right"><?php echo $bocor."m³"; ?> <span class="mx-2">=</span> Rp.<?php echo number_format($harga_bocor); ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    
                    <div class="row mt-1">
                        <div class="col-md-12">
                            <h3>Total</h3>
                            <table class="">
                                <tr>
                                    <th>Pemakaian Normal</th>
                                    <td class="text-right"><?php echo $pemakaian_normal."m³"; ?> <span class="mx-2">=</span> Rp.<?php echo number_format($harga_pemakaian_normal); ?></td>
                                </tr>
                                <tr>
                                    <th>Bocor</th>
                                    <td class="text-right" style="position:relative;"><?php echo $bocor."m³"; ?>
                                        <span class="mx-2">=</span> Rp.<?php echo number_format($harga_bocor); ?>
                                        <span style="position:absolute;right:-15px;bottom:-10px;"> + </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                    </th>
                                    <td class="text-right"><?php echo $bocor+$pemakaian_normal."m³"; ?> <span class="mx-2">=</span> Rp.<?php echo number_format($harga_bocor+$harga_pemakaian_normal); ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    
                    <div class="row mt-1">
                        <div class="col-md-12">
                            <h3>Discount</h3>
                            <table class="">
                                <tr>
                                    <th>Harga Awal</th>
                                    <td class="text-right"> Rp.<?php echo number_format($temp_harga_tagihan); ?></td>
                                </tr>
                                <tr>
                                    <th>Harga Akhir</th>
                                    <td class="text-right" style="position:relative;">
                                        Rp.<?php echo number_format($harga_bocor+$harga_pemakaian_normal); ?>
                                        <span style="position:absolute;right:-15px;bottom:-10px;"> - </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Harga Diskon</th>
                                    <td class="text-right">Rp.<?php echo number_format( $temp_harga_tagihan - ($harga_bocor+$harga_pemakaian_normal) ); ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            </div>
          </div>
        </div>
        
      </div>

    </div>

<?php include "footer.php"; ?>