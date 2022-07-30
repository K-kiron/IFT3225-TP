<?php
    define('DB_HOST', 'localhost');
    define('DB_USER', 'Yuyang');
    define('DB_PASS', '123qwe,./');
    define('DB_NAME', 'wiki');

    // Create connection
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    // Check connection
    if($conn->connect_error) {
        die('Connection Failed ' . $conn->connect_error);
    }

    echo 'CONNECTED!';
?>