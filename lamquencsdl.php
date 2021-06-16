<?php

    // echo "Xin chao cac ban nhe\n";
    $host = "localhost";
    $dbname = "test";
    $username = "root";
    $password = "2021";
    $connect = new pdo("mysql:host=$host;dbname=$dbname;charset=utf8",$username,$password);
    $sql = "select * from danhsachhocsinh";
    $kq = $connect->query($sql);

    //Chen them moi
    // $Insert = "INSERT INTO `danhsachhocsinh`(`hoten`, `diachi`) 
    //          VALUES ('HOANG DUC','QUANG BINH')";
    // $kqInsert = $connect->exec($Insert);
    // $Delete = "DELETE FROM `danhsachhocsinh` WHERE `id` = 9";
    // $kqDelete = $connect->exec($Delete);
    $PhanTrang = "Select * from `danhsachhocsinh` limit 3";
    $kqPhanTrang = $connect->query($PhanTrang);

?>
<table class="table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Ho Ten</th>
            <th> Dia Chi</th>
        </tr>
    </thead>
    <tbody>
        <?php while( $row = $kq->fetch(PDO::FETCH_ASSOC) ) { ?>
            <tr>
                <td><?php echo $row['id']?></td>
                <td><?php echo $row['hoten']?></td>
                <td><?php echo $row['diachi']?></td>
                <td>
                    <a href="ThemMoi.php">them</a>           
                </td>
            </tr>
       <?php }?>
        
    </tbody>
</table>