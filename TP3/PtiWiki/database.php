<?php

    // Create connection
    $conn = new mysqli('localhost', 'Yuyang', '123qwe,./', 'wiki');

    // Check connection
    if($conn->connect_error) {
        die('Connection Failed ' . $conn->connect_error);
    }

    // echo 'CONNECTED!';
?>