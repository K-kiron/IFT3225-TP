<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Create New Account</title>
</head>
<body>
    <h1 style="color:blue">Create New Account</h1>
	<h2>Please enter your username and password:</h2>
	<form action="server.php" method="POST" id="form2">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br><br>
        <label for="password">Password:</label> 
        <input type="text" id="password" name="password"><br><br>
    </form>
    <input type="submit" name="confirmNewAccount" value="Create" form="form2"> 
    <input type="submit" name="return_to_login_page" value="Return" form="form2">

</body>
</html>