<?php
error_reporting(0);
include"config/koneksi.php";
$Judul =$_POST['Judul'];
$Penerbit=$_POST['Penerbit'];
$Pengarang =$_POST['Pengarang'];
$Jenis =$_POST['Jenis'];
$Desc=$_POST['Desc'];
$Stock=$_POST['Stock'];
$Pengirim=$_POST['Pengirim'];
$bykFile = count($_FILES['picture']['name']);
  //get the file name
$fileSize = $_FILES['picture']['size']; //get the size
$fileError = $_FILES['picture']['error']; //get the error when upload\
$direktori= "assets/verlybook/"; // Nana Says : Direktory File Picture
//check if the file is corrupt or error
for ($i = 0; $i < $bykFile; $i++) {
$fileName = $_FILES['picture']['name'][$i];
$Images=$direktori.basename($_FILES['picture']['name'][$i]);
$move = move_uploaded_file($_FILES['picture']['tmp_name'][$i],$Images); //Nana Says : Data Picture Pindah Ke Directory

$sql_simpan="INSERT INTO tb_buku
(id_buku,judul,id_penerbit,id_pengarang,isi,stock,pengirim,picture,status,lihat,date)
VALUES ('','$Judul','$Penerbit','$Pengarang','$Desc','$Stock','$Pengirim','$fileName','T','0','".date('Y-m-d')."')"; 


mysql_query($sql_simpan, $konek)
or die ("Memasukan data produk gagal".mysql_error());
?>
<br/>
<script language="JavaScript">alert('Data Berhasil Di Simpan !');
document.location=('index.php')</script>
<?php
}

?>