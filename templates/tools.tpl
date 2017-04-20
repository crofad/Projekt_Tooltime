<div class="container" id="tooloverview">
	<table>
		<thead>
			<tr>
				<th class="colID">ID</th>
				<th class="colBez">Bezeichnung</th>
				<th class="colAnz">Anzahl</th>
				<th class="colBtn"></th>
			</tr>
		</thead>
		<tbody>
<?php
	foreach ($data['toollist'] as $tool){
		if(isset($data['user']) and $data['user']['mGruppe'] == '2'){
			$edithtml = "<a href=\"edit_tool.php?id={$tool[0]}\"><button>Edit</button></a>";
		}
		else {
			$edithtml = "";
		}
		print("
			<tr>
				<td class=\"colID\">{$tool[0]}</td>
				<td class=\"colBez\">{$tool[1]}</td>
				<td class=\"colAnz\">{$tool[2]}</td>
				<td class=\"colBtn\">{$edithtml}</td>
				
			</tr>");
	}
?>
		</tbody>
		<tfoot>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>
<?php
	if(isset($data['user']) and $data['user']['mGruppe'] == '2'){
		print("<a href=\"new_tool.php\"><button>New</button></a>");
	}
?>
				</td>
			</tr>
		</tfoot>
	</table>
</div>
