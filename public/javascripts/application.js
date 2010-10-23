// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function (){
	$('#deliverable_start').datepicker({ dateFormat: 'yy-mm-dd' });
	$('#deliverable_due').datepicker({ dateFormat: 'yy-mm-dd' });
	$('#cluster_review').datepicker({ dateFormat: 'yy-mm-dd' });
	$('#fundingstream_start').datepicker({ dateFormat: 'yy-mm-dd' });
	$('#fundingstream_finish').datepicker({ dateFormat: 'yy-mm-dd' });
	$("#tabs").tabs({event: 'click'});
});

