<?php

// echo "Xin chao cac ban nhe\n";
require "core/database.php";
$sql = "select * from danhsachhocsinh";
$kq = CRUD_HienThi($sql);
//Chen them moi
// $Insert = "INSERT INTO `danhsachhocsinh`(`hoten`, `diachi`) 
//          VALUES ('HOANG DUC','QUANG BINH')";
// $kqInsert = $connect->exec($Insert);
// $Delete = "DELETE FROM `danhsachhocsinh` WHERE `id` = 9";
// $kqDelete = $connect->exec($Delete);
// $PhanTrang = "Select * from `danhsachhocsinh` limit 3";
// $kqPhanTrang = $connect->query($PhanTrang);

?>
<a href="Table_Blank_CRUD.php?chucnang=them&id=0"> Them Moi </a>
<table class="table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Ho Ten</th>
            <th> Dia Chi</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $kq->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><?php echo $row['id'] ?></td>
                <td><?php echo $row['hoten'] ?></td>
                <td><?php echo $row['diachi'] ?></td>
                <td>
                    <a href="Update.php?chucnang=sua&id=<?php echo $row['id'] ?>">Sua</a>
                    <a href="Update.php?chucnang=xoa&id=<?php echo $row['id'] ?>">Xoa</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>