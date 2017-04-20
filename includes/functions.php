<?php

function redirect($page, $status = 303) {
	$host = $_SERVER['HTTP_HOST'];
	$uri = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
	header("Location: http://$host$uri/$page", true, $status);
	die();
}


// checkt ob ein user bereits eingeloggt ist. 
// wenn ja wird der User zurückgegenen
// wenn nein ein false
function get_user($mysqli) {
	if(isset($_SESSION['mitarbeiter'])){
		$mid = $_SESSION['mitarbeiter'];
		$query = $mysqli->prepare("SELECT mID, mGruppe, VName, NName FROM Mitarbeiter WHERE mID = ? LIMIT 1");

		$query->bind_param('s', $mid);
		$query->execute();

		$result = $query->get_result();

		if($result->num_rows == 1){
			return $result->fetch_assoc();
		}
	}
	return false;
}

function check_group($userarray, $group) {
	if(isset($userarray['mID']) and isset($userarray['mGruppe'])){
		return $userarray['mGruppe'] == $group;
	}
	return false;
}

function deny_entry(){
	header('HTTP/1.0 403 Forbidden');
	echo 'You are forbidden!';
	die();
}

function not_found(){
	header('HTTP/1.0 404 Not Found');
	echo 'Not found!';
	die();
}

function login($mid, $password, $mysqli) {
	$query = $mysqli->prepare("SELECT mID, password FROM Mitarbeiter WHERE mID = ? LIMIT 1");

	$query->bind_param('s', $mid);
	$query->execute();

	$result = $query->get_result();
	$row = $result->fetch_assoc();

	if($password == $row['password']){
		$_SESSION['mitarbeiter'] = $row['mID'];
		return true;
	}
	else {
		return false;
	}
}

function logout() {
	unset($_SESSION['mitarbeiter']);
}

function get_all_tools($mysqli, $category = null) {
	if(!is_null($category)){
		$query = $mysqli->prepare("SELECT wID, Bezeichnung, Anzahl, wGruppe FROM Werkzeug WHERE wGruppe = ?");
		$query->bind_param('s', $category);
	}
	else{
		$query = $mysqli->prepare("SELECT wID, Bezeichnung, Anzahl, wGruppe FROM Werkzeug");
	}

	$query->execute();

	$result = $query->get_result();
	$rows = $result->fetch_all();
	return $rows;
}

function get_one_tool($toolid, $mysqli) {
	$query = $mysqli->prepare("SELECT wID, Bezeichnung, Anzahl, wGruppe FROM Werkzeug WHERE wID = ? LIMIT 1");
	$query->bind_param('s', $toolid);
	$query->execute();
	$result = $query->get_result();
	return $result->fetch_assoc();
}

function do_html($data, ...$includes){
	foreach ($includes as $page) {
		include_once "templates/{$page}.tpl";
	}
}

function edit_tool($tool, $mysqli) {
	$query = $mysqli->prepare("
		UPDATE
			Werkzeug
		SET
			Bezeichnung = ?,
			Anzahl = ?,
			wGruppe = ?
		WHERE
			wID = ?");
	$query->bind_param('ssss', $tool['Bezeichnung'], $tool['Anzahl'], $tool['wGruppe'], $tool['wID']);
	$query->execute();
}

function new_tool($tool, $mysqli) {
	$query = $mysqli->prepare("
		INSERT INTO 
			Werkzeug(Bezeichnung, Anzahl, wGruppe)
		VALUES
			(?, ?, ?)");
	$query->bind_param('sss', $tool['Bezeichnung'], $tool['Anzahl'], $tool['wGruppe']);
	$query->execute();
}