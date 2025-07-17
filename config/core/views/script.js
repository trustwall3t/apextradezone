"use strict";

$(function() {
	
	$('table.table').each(function() {
		var option = { "responsive": false };
		var table = $(this).DataTable(option);    
	});
	
});