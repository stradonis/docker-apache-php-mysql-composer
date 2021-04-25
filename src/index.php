<?php
    echo phpversion() . PHP_EOL;

    $conn = mysqli_connect('db', 'user', 'password', "name_database");
    var_dump($conn);

    mysqli_close($conn);
