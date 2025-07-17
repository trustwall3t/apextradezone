<?php

session_start();


include "../../../config/db.php";

use Endroid\QrCode\QrCode;

require_once 'src\Endroid\QrCode\QrCode.php';

//$sql1= "SELECT * FROM admin";
//  $result1 = mysqli_query($link,$sql1);
 // if(mysqli_num_rows($result1) == 1){
 // $row = mysqli_fetch_assoc($result1);

    //if(isset($row['bwallet'])){
 // $msg = $row['bwallet'];
//}else{
//  $msg="cant find Qr code";
//}
//}

$qr = new QrCode();
$qr->setText('$msg');
$qr    ->setSize(300);
  $qr  ->setPadding(10);
  $qr  ->setLabelFontSize(16);
 $qr -> render();



?>