<div class="container">
		<form action="/edit_tool.php" method="post">
<?php
	print("
		<input name=\"wID\" value=\"{$data['tool']['wID']}\" type=\"hidden\">
		<p>
	  		<label for=\"txtBez\">Bezeichnung</label>
			<input id=\"txtBez\" type=\"text\" name=\"Bezeichnung\" placeholder=\"Bezeichnung\" value=\"{$data['tool']['Bezeichnung']}\" required=\"\" autofocus=\"\" />
		</p>
		<p>
	  		<label for=\"intAnz\">Anzahl</label>
			<input id=\"intAnz\" type=\"int\" name=\"Anzahl\" placeholder=\"Anzahl\" value=\"{$data['tool']['Anzahl']}\" required=\"\"/>
		</p>
		<p>
	  		<label for=\"intGrp\">Gruppe</label>
	        <input id=\"intGrp\" type=\"int\" name=\"wGruppe\" placeholder=\"Werkzeug Gruppe\" value=\"{$data['tool']['wGruppe']}\" required=\"\"/>
		</p>
		<p>
			<label>f</label>
			<button name=\"submit\" value=\"submit\" type=\"Submit\">Absenden</button>
		</p>");
?>
	</form>
</div>