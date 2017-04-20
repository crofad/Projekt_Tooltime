<?php
session_start();

include_once 'includes/db_connect.php';
include_once 'includes/functions.php';
include_once 'includes/config.php';

$data['user'] = get_user($mysqli);

if(!$data['user']) {
	deny_entry();
}

if(isset($_GET['category'])) {
	$data['toollist'] = get_all_tools($mysqli, $_GET['category']);
}
else{
	$data['toollist'] = get_all_tools($mysqli);
}

do_html($data, 'head', 'nav', 'tools', 'foot');

$mysqli->close();


