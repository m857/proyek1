 <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-9">
					<div class="row" style="margin-left:1pc;margin-right:1pc;">
				  <h1>DASHBOARD</h1>
				  <hr>
				   
				  <?php 
						$sql=" select ukuran.*, barang.* from ukuran inner join barang on ukuran.id_barang = barang.id_barang where stok2 <= 3";
						$row = $config -> prepare($sql);
						$row -> execute();
						$r = $row -> fetchAll();
						foreach($r as $q){
					?>	
					<?php
							echo "
							<div class='alert alert-warning'>
							<span class='glyphicon glyphicon-info-sign'></span> Stok  <a style='color:red'>". $q['nama_barang']."</a>  / <span style='color:red'> ID ". $q['id_barang']."</span> / <span style='color:red'> Ukuran ". $q['ukuran2']."</span> yang tersisa sudah kurang dari 3 . silahkan lapor ke pemilik !!
								
							</div>
							";	
						}
					?>
				  <?php $hasil_barang = $lihat -> barang_row();?>
				  <?php $hasil_supplier = $lihat -> supplier_row();?>
				  <?php $hasil_kategori = $lihat -> kategori_row();?>
				  <?php $stok = $lihat -> barang_stok_row();?>
				  <?php $jual = $lihat -> jual_row();?>
				  <?php $beli = $lihat -> beli_row();?>
                    <div class="row">
                      <!--STATUS PANELS -->
                      	<div class="col-md-3">
                      		<div class="panel panel-primary">
                      			<div class="panel-heading">
						  			<h5><i class="fa fa-desktop"></i> Sepatu</h5>
                      			</div>
                      			<div class="panel-body">
									<center><h1><?php echo $hasil_barang;?></h1></center>
								</div>
								<div class="panel-footer">
									<h4 style="font-size:15px;font-weight:700;"><a href='index.php?page=barang'>Tabel Sepatu <i class='fa fa-angle-double-right'></i></a></h4>
								</div>
	                      	</div><!--/grey-panel -->
							  <!-- supplier -->
                      		
                      	</div><!-- /col-md-3-->
                      <!-- STATUS PANELS -->
                      	<div class="col-md-3">
                      		<div class="panel panel-success">
                      			<div class="panel-heading">
						  			<h5><i class="fa fa-desktop"></i> Stok Sepatu</h5>
                      			</div>
                      			<div class="panel-body">
									<center><h1><?php echo $stok['jml'];?></h1></center>
								</div>
								<div class="panel-footer">
									<h4 style="font-size:15px;font-weight:700;"><a href='index.php?page=ukuran'>Tabel Ukuran Sepatu  <i class='fa fa-angle-double-right'></i></a></h4>
								</div>
	                      	</div><!--/grey-panel -->
							  
                      	</div><!-- /col-md-3-->
						  
                      <!-- STATUS PANELS -->
                      	<div class="col-md-3">
                      		<div class="panel panel-danger">
                      			<div class="panel-heading">
						  			<h5><i class="fa fa-desktop"></i> Kategori Sepatu</h5>
                      			</div>
                      			<div class="panel-body">
									<center><h1><?php echo $hasil_kategori;?></h1></center>
								</div>
								<div class="panel-footer">
									<h4 style="font-size:15px;font-weight:700;font-weight:700;"><a href='index.php?page=kategori'>Tabel Kategori <i class='fa fa-angle-double-right'></i></a></h4>
								</div>
	                      	</div><!--/grey-panel -->
                      	</div><!-- /col-md-3-->
                      
					</div>
				</div>
           </div><!-- /col-lg-9 END SECTION MIDDLE -->
                  
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
			<div class="col-lg-3 ds">
				<div id="calendar" class="mb">
					<div class="panel green-panel no-margin">
						<div class="panel-body">
							<div id="date-popover" class="popover top" style="cursor: pointer; margin-left: 33%; margin-top: -50px; width: 175px;">
								<div class="arrow"></div>
								<h3 class="popover-title"></h3>
								<div id="date-popover-content" class="popover-content"></div>
							</div>
							<div id="my-calendar"></div>
						</div>
					</div>
				</div><!-- / calendar -->
			  </div><!-- /col-lg-3 -->
		  </div><! --/row -->
		 <div class="clearfix" style="padding-top:18%;"></div>
	  </section>
  </section>

