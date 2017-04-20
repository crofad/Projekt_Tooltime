<?php
session_start();

include_once 'includes/functions.php';
include_once 'includes/config.php';

logout();
redirect("index.php");
$mysqli->close();

