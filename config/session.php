<?php
error_reporting(0);
session_start();
if ((!$_SESSION['username']) AND (!$_SESSION['password']))
{
echo "<center><font color=white size=+3><b>
Anda Belum Login</b></font><br>";
echo "<br><b><a href=login.php> Klik Disini Untuk Login Terlebih dahulu</center><br></a>";
exit;
}
?>