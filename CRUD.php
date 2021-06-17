<?php
   require 'core/database.php';
   if(isset($_POST["Hoten"])){
      $Hoten = $_POST["Hoten"];
   }
   if(isset($_POST["Diachi"])){
      $Diachi = $_POST["Diachi"];
   }
   if($_GET["chucnang"]=="them"){
      $sql = "INSERT INTO `danhsachhocsinh`(`hoten`, `diachi`)
             VALUES ('$Hoten','$Diachi')";
      $kq = CRUD_Update($sql);
      
   }
   if($_GET["chucnang"]=="sua" and $_GET["id"]>=1){
      $id = $_GET["id"];
      $sql = "Update `danhsachhocsinh`
          set `hoten`= '$Hoten',`diachi`= '$Diachi' where `id` = '$id'";
      $kq = CRUD_Update($sql); 
   }
   if($_GET["chucnang"]=="xoa" and $_GET["id"]>=1){
      $id = $_GET["id"];
      $sql = "DELETE FROM `danhsachhocsinh` WHERE `id` = '$id'";
      $kq = CRUD_Update($sql); 
   } 
   $ThongBao = "Đã giao dịch thành công";
   echo "<script> alert('$ThongBao')</script>";
?>
<a href="lamquencsdl.php">Black</a>
