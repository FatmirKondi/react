<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');

$ID = 0;
if(isset($_GET['ID'])) {
    $ID = $_GET['ID'];
}

$query = "SELECT Name, ImageLink, category FROM spirits";
if($ID > 0) {
    $query .= " WHERE ID=" . $ID;
}

$query = "SELECT Name, ImageLink, category FROM spirits";
if($ID > 0) {
    $query .= " WHERE category=" . $Whiskey;
}

$dsn = "mysql:host=localhost;dbname=seniorprojectdb;charset=UTF8";

try {
    $pdo = new PDO($dsn, 'test', 'test');

    if ($pdo) {
        $statement = $pdo->query($query);
        $spirits = $statement->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($spirits);
    }
} catch (PDOException $e) {
    $response = ['error' => 'Problem connecting to the database'];
    echo json_encode($response);
}

