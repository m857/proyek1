 <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-12 main-chart">
						<h3>Data Sepatu</h3>
						<br/>
						<?php if(isset($_GET['success-stok'])){?>
						<div class="alert alert-success">
							<p>Tambah Stok Berhasil !</p>
						</div>
						<?php }?>
						<?php if(isset($_GET['success'])){?>
						<div class="alert alert-success">
							<p>Tambah Data Berhasil !</p>
						</div>
						<?php }?>
						<?php if(isset($_GET['remove'])){?>
						<div class="alert alert-danger">
							<p>Hapus Data Berhasil !</p>
						</div>
						<?php }?>
						
						<?php 
							$sql1=" select * from barang where stok <= 3";
							$row1 = $config -> prepare($sql1);
							$row1 -> execute();
							$r = $row1 -> fetchAll();
							foreach($r as $q) {
						?>	
						<?php
								echo "
								<div class='alert alert-warning'>
									<span class='glyphicon glyphicon-info-sign'></span> Stok  <a style='color:red'>". $q['nama_barang']."</a>  / <span style='color:red'> ID ". $q['id_barang']."</span> yang tersisa sudah kurang dari 3 . silahkan laporan kepada pemilik !!
								</div>
								";	
							}
						?>
					
					

						<!-- Trigger the modal with a button -->
						
						<!-- <button type="button" class="btn btn-primary btn-md pull-right" data-toggle="modal" data-target="#myModal">
							<i class="fa fa-plus"></i> Insert Data Sepatu</button> -->
						<div class="clearfix"></div>
						<br/>
						
						<!-- view barang -->	
						<div class="modal-view">
							<table class="table table-bordered table-striped" id="example1">
								<thead>
									<tr style="background:#DFF0D8;color:#333;">
										<th>No.</th>
										<th>ID Sepatu</th>
										<!-- <th>Nama Supplier</th> -->
										<th>Nama Sepatu</th>
										<th>Ukuran</th>
										<th>Stok</th>
										<!-- <th>Harga Beli</th> -->
										<th>Harga Jual</th>
										<!-- <th>Satuan</th> -->
										<th>Aksi</th>
									</tr>
								</thead>
								<tbody>

								<?php 
									$totalBeli = 0;
									$totalJual = 0;
									$totalStok = 0;
									$hasil = $lihat -> barang();
									$no=1;
									foreach($hasil as $isi) {
								?>
									<tr>
										<td><?php echo $no;?></td>
										<td><?php echo $isi['id_barang'];?></td>
										<!-- <td><?php //echo $isi['nama_supplier'];?></td> -->
										<td><?php echo $isi['nama_barang'];?></td>
										<td><?php echo $isi['ukuran'];?></td>
										<td>
											<?php if($isi['stok'] == '0'){?>
												<button class="btn btn-danger"> Kosong </button>
											<?php }else{?>
												<?php echo $isi['stok'];?>
											<?php }?>
										</td>
										<!-- <td>Rp.<?php //echo number_format($isi['harga_beli']);?>,-</td> -->
										<td>Rp.<?php echo number_format($isi['harga_jual']);?>,-</td>
										<!-- <td> <?php //echo $isi['satuan_barang'];?></td> -->
										<td>
											
											
											<?php if($isi['stok'] <=  '3'){?>
												<!-- <form method="POST" action="fungsi/edit/edit.php?stok=edit"> -->
												<!-- <form method="POST" action=""> -->
													<!-- <input type="text" name="restok" class="form-control"> -->
													<!-- <input type="hidden" name="id" value="<?php //echo $isi['id_barang'];?>" class="form-control"> -->
													<!-- <button class="btn btn-primary"> -->
												<center>	
												<p>	Silahkan Laporan kepada pemilik <br> untuk melakukan Restok </p> 
												<a href="index.php?page=barang/details&barang=<?php echo $isi['id_barang'];?>"><button class="btn btn-primary btn-xs">Details</button></a>
												</center>
													<!-- </button> -->
												<!-- </form> -->
											<?php }else{?>
											<center>
											<a href="index.php?page=barang/details&barang=<?php echo $isi['id_barang'];?>"><button class="btn btn-primary btn-xs">Details</button></a>
										
											<!-- <a href="index.php?page=barang/edit&barang=<?php echo $isi['id_barang'];?>"><button class="btn btn-warning btn-xs">Edit</button></a> -->
											<!-- <a href="fungsi/hapus/hapus.php?barang=hapus&id=<?php echo $isi['id_barang'];?>" onclick="javascript:return confirm('Hapus Data barang ?');"><button class="btn btn-danger btn-xs">Hapus</button></a> -->
											</center>
											<?php }?>
											
											
									</tr>
								<?php 
										$no++; 
										$totalBeli += $isi['harga_beli'] * $isi['stok']; 
										$totalJual += $isi['harga_jual'] * $isi['stok'];
										$totalStok += $isi['stok'];
									}
								?>
								</tbody>
								<tfoot>
									<tr>
										<th colspan="4">Total </td>
										<th><?php echo $totalStok;?></td>
										
										
										<th colspan="3" ></th>
									</tr>
								</tfoot>
							</table>
						</div>
						<div class="clearfix" style="margin-top:7pc;"></div>
					<!-- end view barang -->
					<!-- tambah barang MODALS-->
						<!-- Modal -->
					
						<div id="myModal" class="modal fade" role="dialog">
							<div class="modal-dialog">
								<!-- Modal content-->
								<div class="modal-content" style=" border-radius:0px;">
								<div class="modal-header" style="background:#285c64;color:#fff;">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title"><i class="fa fa-plus"></i> Tambah Sepatu</h4>
								</div>										
								<form action="fungsi/tambah/tambah.php?barang=tambah" method="POST">
									<div class="modal-body">
								
										<table class="table table-striped bordered">
											
											<?php
												$format = $lihat -> barang_id();
											?>
											<tr>
												<td>ID Sepatu</td>
												<td><input type="text" readonly="readonly" required value="<?php echo $format;?>" class="form-control"  name="id"></td>
											</tr>
											<tr>
												<td>Kategori</td>
												<td>
												<select name="kategori" class="form-control" required>
													<option value="#">Pilih Kategori</option>
													<?php  $kat = $lihat -> kategori(); foreach($kat as $isi){ 	?>
													<option value="<?php echo $isi['id_kategori'];?>"><?php echo $isi['nama_kategori'];?></option>
													<?php }?>
												</select>
												</td>
											</tr>
											<tr>
												<td>Nama Sepatu</td>
												<td><input type="text" placeholder="Nama Barang" required class="form-control" name="nama"></td>
											</tr>
											<tr>
												<td>Nama Supplier</td>
												<td>
												<select name="namsup" class="form-control" required>
													<option value="#">Pilih Supplier</option>
													<?php  $sup = $lihat -> supplier(); foreach($sup as $isi){ 	?>
													<option value="<?php echo $isi['id_supplier'];?>"><?php echo $isi['nama_supplier'];?></option>
													<?php }?>
												</select>
												</td>
											</tr>
											<tr>
												<td>Merk Sepatu</td>
												<td><input type="text" placeholder="Merk Barang" required class="form-control"  name="merk"></td>
											</tr>
											<tr>
												<td>Harga Beli</td>
												<td><input type="number" placeholder="Harga beli" required class="form-control" name="beli"></td>
											</tr>
											<tr>
												<td>Harga Jual</td>
												<td><input type="number" placeholder="Harga Jual" required class="form-control"  name="jual"></td>
											</tr>
											<tr>
												<td>Satuan Sepatu</td>
												<td>
													<select name="satuan" class="form-control" required>
														<option value="#">Pilih Satuan</option>
														<option value="Pasang">Pasang</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>Stok</td>
												<td><input type="number" class="form-control" readonly="readonly" value="0"  name="stok"></td>
											</tr>
											<tr>
												<td>Ukuran Sepatu</td>
												<td><input type="number" required Placeholder="Ukuran" class="form-control"  name="ukuran"></td>
											</tr>
											<tr>
												<td>Tanggal Input</td>
												<td><input type="text" required readonly="readonly" class="form-control" value="<?php echo  date("j F Y, G:i");?>" name="tgl"></td>
											</tr>
										</table>
									</div>
									<div class="modal-footer">
										<button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> Insert Data</button>
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</form>
							</div>
						</div>
						
					</div>
              	</div>
          	</section>
      	</section>
	
