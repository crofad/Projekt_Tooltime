<?php
session_start();

include_once 'includes/db_connect.php';
include_once 'includes/functions.php';
include_once 'includes/config.php';

$data['user'] = get_user($mysqli);

if(!($data['user'] and check_group($data['user'], 2))) {
	deny_entry();
}

if(isset($_POST['submit'])) {
	$tool = array(
		'Bezeichnung' => $_POST['Bezeichnung'],
		'Anzahl' =>$_POST['Anzahl'],
		'wGruppe' =>$_POST['wGruppe']);

	if(isset($_POST['wID'])){
		$tool['wID'] = $_POST['wID'];
		edit_tool($tool, $mysqli);
	}
	else{
		new_tool($tool, $mysqli);
	}
	$mysqli->close();
	redirect("tools.php?category=" . $tool['wGruppe']);
}
else {
	$data['tool'] = get_one_tool($_GET['id'], $mysqli);

	if (is_null($data['tool'])) {
		not_found();
	}
	do_html($data, 'head', 'nav', 'edit_tool', 'foot');
}

$mysqli->close();
