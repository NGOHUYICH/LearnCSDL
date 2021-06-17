<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="CRUD.php?chucnang=<?php echo $_GET['chucnang'];?>&id=<?php echo $_GET['id'];?>" method="post">
        <label for="HoTen">Ho va Ten :</label>
        <input type="text" name="Hoten" id="Hoten">
        <label for="DiaChi">Dia chi :</label>
        <input type="text" name="Diachi" id="Diachi">
        <input type="submit" value="Send">
    </form>
</body>
</html>