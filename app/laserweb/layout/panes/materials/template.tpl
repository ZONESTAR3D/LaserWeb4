<style>
.mbutton {
	background-color: green;
	color: white;
	border-radius: 6px;
	border: 1px solid black;
	font-size: 12px;
	padding: 0px;
	width:100%;
}
table {
	border-collapse: collapse;
	height: 100%;
}
td {
	border-collapse: collapse;
	border: 1px solid black;
	width: 100px;
	height: 100%;
}
td.buttond {
	width: 100%;
}
td.percent {

}
.percentdata {
	width: 100%;
	padding: 0px;
}
.matname {
	width: 100%;
}
</style>

<template id="layout-materials-pane">
	<table id="materials-root">
		<thead><tr> Material Presets</tr>
			<tr>
				<td rowspan=2>Material Name</td>
				<td colspan=3>Settings</td>
			</tr>
			<tr>
				<td>cut type</td>
				<td class="percent">speed</td>
				<td class="percent">power</td>
			</tr>
		</thead>
		<tbody data-bind="foreach: { data: materialList, as: 'material'}">

			<tr>
				<td data-bind="attr: { rowspan: material.settingCount }">
					<input class="matname" data-bind="text: material.name">
				</td>
			</tr>
			<!-- ko foreach: {data: materialSettings, as: 'settings'} -->
			<tr>
				<td><input class="matname" data-bind="text: material.name"></td>
                                <td class="percent"><input class="percentdata" data-bind="text: settings.speed"></td>
                                <td class="percent"><input class="percentdata" data-bind="text: settings.power"></td>
                                <td class="buttontd"><button class="mbutton" data-bind="click: material.removeLaserSetting">Remove Cut</button>
			</tr>
			<!-- /ko -->
			<tr>
				<td class="buttontd">
					<button class="mbutton" data-bind="click: $root.removeMaterial">Remove Material</button>
				</td>
				<td>
					<button class="mbutton" data-bind="click: material.addLaserSetting">Add Cut</button>
				</td>
			</tr>
		</tbody>
	</table>
	<button data-bind="click: $root.addMaterial" class="mbutton">Add Material</button>
</template