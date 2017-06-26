<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/ DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/ 1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Registration</title>
	<style type="text/css" media="screen">
		.error { color: red; }
	</style>
</head>
<body>
<h1>Registration Results</h1>

<?php // Script 6.2 - handle_reg.php
$okay = TRUE;
if (empty($_POST['email'])){
	print '<p class="error">Please enter your email address.</p>';
	$okay=FALSE;
}

if (empty($_POST['password'])){
	print '<p class="error">Please enter your password.</p>';
	$okay = FALSE;
} 
if ($_POST['password'] != $_POST['confirm']) {
	print '<p class="error">Your confirmed password does not match the original password.</p>';
	$okay=FALSE;
}

if (is_numeric($_POST['year'])){
	$age = 2011 - $_POST['year'];
} else{
	print '<p class="error">Please enter the year you were born as four digits.</p>';
	$okay = FALSE;
}

if ($_POST['year'] >= 2017) {
	print '<p class="error">Either you entered your birth year wrong or you come from the future!</p>';
	$okay=FALSE;
}

if ($okay) {
	print '<p>You have been successfully registered (but not really).</p>';
	print "<p>You will turn $age this year.</p>";
}
?>
</body>
</html>


