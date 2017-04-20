<?php
session_start();

include_once 'includes/db_connect.php';
include_once 'includes/functions.php';
include_once 'includes/config.php';

$data['user'] = get_user($mysqli);

if(!$data['user']) {
	deny_entry();
}

do_html($data, 'head', 'nav', 'new_tool', 'foot');