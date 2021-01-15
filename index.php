<?php
$type = 'mysql';

$hostname = '127.0.0.1';

$dbname = 'test';

$username = 'root';

$password = 'root';



try {



    $dsn = sprintf('%s:dbname=%s;host=%s;charset=utf8', $type, $dbname, $hostname);



    //初始化一个PDO对象

    $pdo = new PDO($dsn, $username, $password, [

        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION //开启异常模式

    ]);



} catch (PDOException $e) {

    die ("Database error: " . $e->getMessage());

}



$smt = $pdo->query('SELECT * FROM t_user');



$data = $smt->fetchAll(PDO::FETCH_ASSOC);



var_dump($data);

?>