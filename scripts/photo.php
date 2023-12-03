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
        $userId = $faker->numberBetween(1, 10); 
        $product_id = $faker->numberBetween(1, 10); 
        $photoUrl = $faker->imageUrl;

        $stmt = $pdo->prepare("INSERT INTO photo (user_id, product_id, photo_url) VALUES (?, ?, ?)");
        $stmt->execute([$userId, $product_id, $photoUrl]);
    }

    echo "Table 'photo' remplie avec des données fictives.";

} catch (PDOException $e) {
    echo "Erreur de base de données : " . $e->getMessage();
}
