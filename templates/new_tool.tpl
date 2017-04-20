<div class="container">
		<form action="/edit_tool.php" method="post">
<?php
	print("

		<p>
	  		<label for=\"txtBez\">Bezeichnung</label>
			<input id=\"txtBez\" type=\"text\" name=\"Bezeichnung\" placeholder=\"Bezeichnung\"  required=\"\" autofocus=\"\" />
		</p>
		<p>
	  		<label for=\"intAnz\">Anzahl</label>
			<input id=\"intAnz\" type=\"int\" name=\"Anzahl\" placeholder=\"Anzahl\" required=\"\"/>
		</p>
		<p>
	  		<label for=\"intGrp\">Gruppe</label>
	        <input id=\"intGrp\" type=\"int\" name=\"wGruppe\" placeholder=\"Werkzeug Gruppe\" required=\"\"/>
		</p>
		<p>
			<label></label>
			<button name=\"submit\" value=\"submit\" type=\"Submit\">Absenden</button>
		</p>");
?>
	</form>
</div>
