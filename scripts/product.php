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
        $productName = $faker->word;
        $price = $faker->randomFloat(2, 10, 100);
        $description = "Description statique pour le produit $productName.";

        $stmt = $pdo->prepare("INSERT INTO product (name, price, description) VALUES (?, ?, ?)");
        $stmt->execute([$productName, $price, $description]);
    }

    echo "Table 'product' remplie avec des données fictives.";

} catch (PDOException $e) {
    echo "Erreur de base de données : " . $e->getMessage();
}
