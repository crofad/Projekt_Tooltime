<div class="container">
		<p>
<?php
	if(!isset($data['user'])){
		print('Sie sind nicht eingelogt: <a href="/login.php">Login</a>');
	}
	else{
		print("Hallo {$data['user']['VName']} {$data['user']['NName']}");
	}
?>
	</p>
</div>
