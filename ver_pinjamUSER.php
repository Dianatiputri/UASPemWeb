<?php
include"config/koneksi.php";
$idbukupinjam=$_GET['idbukupinjam'];
$stock=$_GET['stock'];
$sql_baca="UPDATE tb_buku SET stock=stock-1
WHERE id_buku='$idbukupinjam'";
mysql_query($sql_baca);
$idnamapem=$_GET['idnamapem'];
$judul=$_GET['judul'];
$penerbit=$_GET['penerbit'];
$pengarang=$_GET['pengarang'];
$isi=$_GET['isi'];
$id_user=$_GET['id_user'];
$picture=$_GET['picture'];
$sql_simpan="INSERT INTO tb_peminjam
(id_peminjam,id_login,id_buku,status,nama_peminjam,judul,penerbit,pengarang,isi,picture,date)
VALUES ('','$id_user','$idbukupinjam','P','$idnamapem','$judul','$penerbit','$pengarang','$isi','$picture','".date('Y-m-d')."')"; 
if($stock==1){
$sql_ubah="UPDATE tb_buku SET
				status='P'
				WHERE id_buku='$idbukupinjam'";
      		 	mysql_query($sql_ubah);
 }		 
mysql_query($sql_simpan, $konek)
or die ("Meminjam gagal".mysql_error());
?>

<script language="JavaScript">alert('Anda Berhasil Meminjam Buku');
document.location=('ver_lihatUSER.php')</script>
<?php

?>