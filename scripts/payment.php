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
        $iban = generateRandomIban();
        $cardNumber = generateRandomCreditCard();
        $paymentMethod = 'Credit Card';
        $cvv = mt_rand(100, 999);
        $expirationDate = generateRandomExpirationDate();

        $stmt = $pdo->prepare("INSERT INTO payment (user_id, iban, card_number, payment_method, cvv, expiration_date) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->execute([$userId, $iban, $cardNumber, $paymentMethod, $cvv, $expirationDate]);
    }

    echo "Table 'payment' remplie avec des données fictives.";

} catch (PDOException $e) {
    echo "Erreur de base de données : " . $e->getMessage();
}

function generateRandomIban()
{
    $countryCode = 'FR';
    $checksum = mt_rand(10, 99);
    $bankCode = mt_rand(10000, 99999);
    $branchCode = mt_rand(10000, 99999);
    $accountNumber = mt_rand(10000000000, 99999999999);

    return $countryCode . $checksum . $bankCode . $branchCode . $accountNumber;
}

function generateRandomCreditCard()
{
    $cardNumber = '4'; 
    for ($i = 0; $i < 15; $i++) {
        $cardNumber .= mt_rand(0, 9);
    }

    return $cardNumber;
}

function generateRandomExpirationDate()
{
    $month = str_pad(mt_rand(1, 12), 2, '0', STR_PAD_LEFT);
    $year = date("Y") + mt_rand(1, 5); 
    return "$month/$year";
}
