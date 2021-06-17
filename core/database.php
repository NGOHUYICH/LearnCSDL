<?php
    
    $host = "localhost";
    $dbname = "test";
    $username = "root";
    $password = "2021";
    function CRUD_Query()
    {
        global $host;
        global $dbname;
        global $username;
        global $password;
        $connect = new pdo("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
        return $connect;
    }
    function CRUD_HienThi($sql)
    {   
        $connect = CRUD_Query();
        $kq = $connect->query($sql);
        return $kq;
    }
    function CRUD_Update($sql)
    {   
        $connect = CRUD_Query();
        $kq = $connect->exec($sql);
        return $kq;
    }
?>