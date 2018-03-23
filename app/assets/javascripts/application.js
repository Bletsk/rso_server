// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require_tree .

$(document).ready( function(){
	$('input').iCheck({
		checkboxClass: 'icheckbox_square-blue',
		radioClass: 'iradio_square-blue'
	});

	$('.select2-selection').select2({
		minimumResultsForSearch: -1,
		placeholder: "Категория"
	});

	$("#new_todo_btn").click(function(){
		$('#black_screen').css("display", "flex");
	});

	$(document).on('click', "#cancel_link", function(){
		event.preventDefault();
		$('#black_screen').css("display", "none");
	});

	$(document).on('click', '#submit_link', function(){
		event.preventDefault();
		$('#new_todo_form').submit();
	});

	$('.icheckbox_square-blue').on('ifChanged', function(){
		$(this).parent().parent().submit();
	});
});