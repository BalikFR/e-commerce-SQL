<?php

require_once '../vendor/autoload.php';

use Faker\Factory;

$faker = Factory::create();

$dbHost = 'localhost';
$dbName = 'commerceYNOV';
$dbUser = 'root';
$dbPassword = '';

try {
    $pdo = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPassword);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    for ($i = 0; $i < 10; $i++) {
        $username = $faker->userName;
        $passwordHash = password_hash($faker->password, PASSWORD_DEFAULT);
        $email = $faker->email;
        $firstName = $faker->firstName;
        $lastName = $faker->lastName;
        $phoneNumber = $faker->phoneNumber;

        $stmt = $pdo->prepare("INSERT INTO user (username, password_hash, email, first_name, last_name, phone_number) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->execute([$username, $passwordHash, $email, $firstName, $lastName, $phoneNumber]);
    }

    echo "Base de données remplie avec des données fictives.";

} catch (PDOException $e) {
    echo "Erreur de base de données : " . $e->getMessage();
}
