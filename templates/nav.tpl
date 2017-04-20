<nav>
<?php
	if(!isset($data['user']) or !$data['user']){
		print('<p>Du bist nicht eingeloggt</p>');
	}
	else{
		print("<p>User: {$data['user']['VName']} {$data['user']['NName']}</p>");
		print('<p><a href="/logout.php"><button>Logout</button></a></p>');
		print('<hr>');
		print('
		<ul>
			<div class="navbutton"><li><a href="/index.php">Home</a></li></div>
			<div class="navbutton">
				<li>
					<a href="/tools.php">Werkzeuge</a>
					<ul class="subnav">
						<div class="navbutton"><li><a href="/tools.php?category=1">Oberflächenbearbeitung</a></li></div>
						<div class="navbutton"><li><a href="/tools.php?category=2">Trennen</a></li></div>
						<div class="navbutton"><li><a href="/tools.php?category=3">Verbinden</a></li></div>
						<div class="navbutton"><li><a href="/tools.php?category=4">Schraubendreher &amp; Schlüssel</a></li></div> 
						<div class="navbutton"><li><a href="/tools.php?category=5">Zangen</a></li></div>
						<div class="navbutton"><li><a href="/tools.php?category=6">Reinigen</a></li></div>
						<div class="navbutton"><li><a href="/tools.php?category=7">Bohren</a></li></div>
					</ul>
				</li>
			</div>
			<div class="navbutton"><li><a href="/agb.php">AGB</a></li></div>
		</ul>
		');
	}
?>
</nav>
