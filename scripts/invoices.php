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
        $commandId = $faker->numberBetween(1, 10);
        $totalAmount = $faker->randomFloat(2, 10, 100);

        $stmt = $pdo->prepare("INSERT INTO invoices (command_id, total_amount) VALUES (?, ?)");
        $stmt->execute([$commandId, $totalAmount]);
    }

    echo "Table 'invoices' remplie avec des données fictives.";

} catch (PDOException $e) {
    echo "Erreur de base de données : " . $e->getMessage();
}
