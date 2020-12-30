<?php
// Include calendar helper functions
include_once 'fun2.php';
?>

<!DOCTYPE html>
<html lang="en-US">
<head>
<title>inz2</title>
<meta charset="utf-8">

<!-- Stylesheet file -->
<link rel="stylesheet" href="css/style.css">

<!-- jQuery library -->
<script src="js/jquery.min.js"></script>
</head>
<body>
	<!-- Display event calendar -->
	<div id="calendar_div">
		<?php echo WywolajKalendarz(); ?>
	</div>
	
</body>
</html>