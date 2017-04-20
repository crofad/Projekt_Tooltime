<?php
session_start();

include_once 'includes/db_connect.php';
include_once 'includes/functions.php';
include_once 'includes/config.php';

$data['user'] = get_user($mysqli);

if(!$data['user']) {
	redirect("login.php");
}

do_html($data, 'head', 'nav', 'index', 'side', 'foot');

$mysqli->close();

