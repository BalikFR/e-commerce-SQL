<?php

require_once '../vendor/autoload.php';

use Faker\Factory;

$faker = Factory::create();

$dbHost = 'localhost';
$dbName = 'commerceynov';
$dbUser = 'root';
$dbPassword = '';

try {
    $pdo = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPassword);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    for ($i = 0; $i < 10; $i++) {
        $userId = $faker->numberBetween(1, 10);  
        $product_id = $faker->numberBetween(1, 10); 
        $rating = $faker->numberBetween(1, 5);
        $review = $faker->realText();

        $stmt = $pdo->prepare("INSERT INTO rate (user_id, product_id, rating, review) VALUES (?, ?, ?, ?)");
        $stmt->execute([$userId, $product_id, $rating, $review]);
    }

    echo "Table 'rate' remplie avec des données fictives.";

} catch (PDOException $e) {
    echo "Erreur de base de données : " . $e->getMessage();
}
