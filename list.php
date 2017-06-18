<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>I Have This Sorted Out</title>
</head>
<body>
<?php // Script 7.7 - list.php
$words_array = explode(' ',$_POST['words']);
sort($words_array);

$string_words = implode('<br>',$words_array);

print "<p>An alphabetized version of your list is: <br>$string_words</p>";

?>
</body>
</html>
