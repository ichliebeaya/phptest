<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<title>Connect to MySQL</title>
</head>

<body>
<?php // Script 12.1 - mysql_connect.php 

if ($dbc=mysqli_connect('localhost','phptest','initial0')){
	print '<p>Successfully connected to MySQL!</p>';
	mysqli_close($dbc);
}else{
	print '<p style="color: red;">Could not connect to MySQL.</p>';

}
?>
</body>
</html>
