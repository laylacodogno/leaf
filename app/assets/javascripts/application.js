//= require jquery
//= require materialize-sprockets
//= require_tree .

$( document ).ready(function() {
    var windowHeight = $(window).height() - 110;
    $("main").css("min-height", windowHeight);

    $(".dropdown-button").dropdown();

    $(".input-field label").addClass("active");
});
