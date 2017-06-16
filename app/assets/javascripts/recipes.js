// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
	$("#ingredients > .ingredients-attr > .input-field > input[type=hidden]").val(false);

	$(document).on('click', '.btn-remove', function(event){
		console.log('asdasd')
		event.preventDefault();
		$(this).siblings("input[type=hidden]").val(1);
		$(this).closest(".ingredients-attr").hide();
	});

	$(document).on('click', '.btn-add', function(event){
		event.preventDefault();
		var time = new Date().getTime();
		var regexp = new RegExp($(this).data('id'), 'g');
		$(this).parent().before($(this).data('fields').replace(regexp, time));

	  $('select').material_select();
	  $(".input-field label").addClass("active");
	});
});