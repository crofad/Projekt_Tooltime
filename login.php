<?php
session_start();

include_once 'includes/db_connect.php';
include_once 'includes/functions.php';
include_once 'includes/config.php';

if(isset($_POST['mID'], $_POST['password'])) {
	if(login($_POST['mID'], $_POST['password'], $mysqli)) {
		redirect("index.php");
	}
	echo "Login fehlgeschlagen!";
}
else {
	if(get_user($mysqli)) {
		redirect("index.php");
	}
}
$data = array();
do_html($data, 'head', 'nav', 'login', 'side', 'foot');

$mysqli->close();
