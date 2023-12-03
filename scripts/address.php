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
        $userId = mt_rand(1, 10);
        $street = $faker->streetAddress;
        $city = $faker->city;
        $zipCode = $faker->postcode;
        $country = $faker->country;

        $stmt = $pdo->prepare("INSERT INTO address (user_id, street, city, postal_code, country) VALUES (?, ?, ?, ?, ?)");
        $stmt->execute([$userId, $street, $city, $zipCode, $country]);
    }

    echo "Table 'address' remplie avec des données fictives.";

} catch (PDOException $e) {
    echo "Erreur de base de données : " . $e->getMessage();
}
