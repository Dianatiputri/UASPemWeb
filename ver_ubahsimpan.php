<?php

error_reporting(0);
include"config/koneksi.php";

$VerJudul =$_POST['VerJudul'];
$VerPenerbit=$_POST['VerPenerbit'];
$VerliPengarang =$_POST['VerliPengarang'];
$VerJenis =$_POST['VerJenis'];
$VerDesc=$_POST['VerDesc'];
$verliIDbuku=$_POST['verliIDbuku'];
$VerPengirim=$_POST['VerPengirim'];
$bykFile = count($_FILES['picture']['name']);
  //get the file name
$fileSize = $_FILES['picture']['size']; //get the size
$fileError = $_FILES['picture']['error']; //get the error when upload\
$direktori= "assets/verlybook";
//check if the file is corrupt or error
for ($i = 0; $i < $bykFile; $i++) {
$fileName = $_FILES['picture']['name'][$i];
$Images=$direktori.basename($_FILES['picture']['name'][$i]);
$move = move_uploaded_file($_FILES['picture']['tmp_name'][$i],$Images); //save image to the folder
}
// Perintah Update data
$sql_ubah="UPDATE tb_buku SET
judul ='$VerJudul',
id_penerbit ='$VerPenerbit',
id_pengarang='$VerliPengarang',
pengirim='$VerPengirim',
picture='$fileName',
isi='$VerDesc',
date='".date('Y-m-d')."'
WHERE id_buku='$verliIDbuku'";
mysql_query($sql_ubah, $konek)
or die ("Perubahan data gagal".mysql_error());
echo "Data berhasil diubah";
include "ver_ubahdirek.php";
?>