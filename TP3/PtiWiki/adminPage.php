<?php include "database.php"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin Page</title>
</head>
<body>
    <h2 style="color:blue;">Welcome to administrator page, you could remove users here.</h2>
    <?php
        $request = "SELECT username, password, identity FROM Users WHERE identity = 'generalUser'";
        $result = mysqli_query($conn, $request);
        $nb_users = mysqli_num_rows($result);

        if ($nb_users > 0) {
            echo "<table style='border:1px solid black; width:50%;'>";
            echo "<tr>
            <th style='border:1px solid black;'>username</th>
            <th style='border:1px solid black;'>password</th>
            <th style='border:1px solid black;'>identity</th>
            </tr>";
            while ($tuple = mysqli_fetch_assoc($result)) {
                echo "<tr>" . 
                "<td style='border:1px solid black;'>" . $tuple["username"] . "</td>" . 
                "<td style='border:1px solid black;'>" . $tuple["password"] . "</td>" . 
                "<td style='border:1px solid black;'>" . $tuple["identity"] . "</td>" . 
                "</tr>";
            }
            echo "</table>";
            
        } else {
            echo "<h2 style='color:red'>There is no user account in the system.</h2>";
        }

    ?>
	<h3>Enter the username you want to remove from the system:</h3>
	<form action="server.php" method="POST" id="form3">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username">
        <input type="submit" name="remove" value="Delete" form="form3"><br><br>
        <input type="submit" name="return_to_login_page" value="Logout" form="form3">
    </form>
    
</body>
</html>