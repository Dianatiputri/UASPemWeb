<?php
session_start();
if ((!$_SESSION['namauser']) AND (!$_SESSION['passuser']))
{
echo "<center><font color=blue size=+3><b>
Kembali ke Halaman User</b></font><br>";
echo "<br>Klick <a href=../>Kembali</a> Ke HOME </center><br>";
exit;
}
?>