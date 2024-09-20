<?php
require_once 'src/MyClass.php';

$myClass = new MyClass();
$message = $myClass->getMessage();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon Projet</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <h1><?php echo $message; ?></h1>
    <script src="scripts/script.js"></script>
</body>
</html>
