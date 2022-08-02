<?php
    include "database.php";

    if (isset($_POST["login"])) {

        if ($_POST["username"] != "" & $_POST["password"] != "") {
            $username = $_POST["username"];
            $password = $_POST["password"];

            $request = "SELECT password, identity, username FROM Users WHERE username = '${username}'";
            $result = mysqli_query($conn, $request);
            $nb_rows = mysqli_num_rows($result);
            $tuple = mysqli_fetch_assoc($result);

            if ($nb_rows > 0) {
                if ($tuple["password"] == $password & $tuple["identity"] == "generalUser") {
                    header("Location: index.html");
                } else if ($tuple["password"] == $password & $tuple["identity"] == "admin") {
                    header("Location: adminPage.php");
                }
                
            } else {
                header("Location: uncorrectInfo.php");
            }
        } else {
            header("Location: infoMiss.php");
        }
        
    }

    if (isset($_POST["createAccount"])) {
        header("Location: createAccount.php");
    }

    if (isset($_POST["confirmNewAccount"])) {
        $username = $_POST["username"];
        $password = $_POST["password"];

        $request = "INSERT INTO Users (username, password) VALUES ('${username}', '${password}')";
        $result = mysqli_query($conn, $request);

        header("Location: newAccount.php");
    }

    if (isset($_POST["remove"])) {
        $username = $_POST["username"];
        $request = "DELETE FROM Users WHERE username = '$username'";
        $result = mysqli_query($conn, $request);

        header("Location: adminPage.php");
    }

    if (isset($_POST["return_to_login_page"])) {
        header("Location: login.php");
    }

?>