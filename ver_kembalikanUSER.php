<?php
include"config/koneksi.php";
$idkembalikan=$_GET['idkembalikan'];
$sql_baca="UPDATE tb_buku SET stock=stock+1
WHERE id_buku='$idkembalikan'";
mysql_query($sql_baca);


$sql_bacas="UPDATE tb_peminjam SET status='K'
WHERE id_buku='$idkembalikan'";
mysql_query($sql_bacas);



$sql_bacas="UPDATE tb_buku SET status='T'
WHERE id_buku='$idkembalikan'";
mysql_query($sql_bacas);


?>


<script language="JavaScript">alert('Anda Berhasil Mengembalikan Buku');
document.location=('ver_bukupinjam.php')</script>

