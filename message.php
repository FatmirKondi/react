<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');

$email = $_POST['email'];
$message = $_POST['message'];

$dsn = "mysql:host=localhost;dbname=seniorprojectdb;charset=UTF8";

try {
    $pdo = new PDO($dsn, 'test', 'test');

    if ($pdo) {
        $statement = $pdo->prepare("INSERT INTO messages (email, message) VALUES (:email, :message)");
        $statement->bindParam(":email", $email);
        $statement->bindParam(":message", $message);
        $statement->execute();
        echo json_encode(['result' => 'Your message is received!']);
    }
} catch (PDOException $e) {
    $response = ['result' => 'Error: Problem connecting to the database'];
    echo json_encode($response);
}
