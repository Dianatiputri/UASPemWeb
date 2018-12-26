<?php
include 
"config/koneksi.php";
#jika ditekan tombol login
session_start();
$username = $_POST['username'];
$password = $_POST['password'];
$op = $_GET['op'];
if($op=="in"){
    $cek = mysql_query("SELECT * FROM tb_login WHERE username='$username' AND password='$password'");
 if(mysql_num_rows($cek)==1){//jika berhasil akan bernilai 1
        $c = mysql_fetch_array($cek);
        $_SESSION['username'] = $c['username'];
		$_SESSION['password'] = $c['password'];
        $_SESSION['level'] = $c['level']; 
       $_SESSION['img'] = ''. $c['avatar'];    
       $_SESSION['id_login'] = $c['id_login'];       	
        if($c['level']=="admin"){
            header("location:loginsucces.php");
        }else if($c['level']=="user"){
            header("location:loginsuccesUSER.php");
        }
    }else{
        // jika login salah //
echo "<script>
eval(\"parent.location='login.php '\");
alert (' Maaf Login Gagal, Silahkan Isi Username dan Password Anda Dengan Benar');
</script>";
    }
}else if($op=="out"){
    unset($_SESSION['username']);
    unset($_SESSION['level']);
    header("location:login.php");
}

?>

