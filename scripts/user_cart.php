<?php

$dbHost = 'localhost';
$dbName = 'commerceYNOV';
$dbUser = 'root';
$dbPassword = '';

try {
    $pdo = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPassword);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    for ($i = 0; $i < 10; $i++) {
        $userId = mt_rand(1, 10); 
        $productId = mt_rand(1, 20);
        $quantity = mt_rand(1, 5);

        $stmt = $pdo->prepare("INSERT INTO user_cart (user_id, product_id, quantity) VALUES (?, ?, ?)");
        $stmt->execute([$userId, $productId, $quantity]);
    }

    echo "Table 'user_cart' remplie avec des données fictives.";

} catch (PDOException $e) {
    echo "Erreur de base de données : " . $e->getMessage();
}
