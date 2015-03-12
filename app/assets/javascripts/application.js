//= require jquery
//= require best_in_place
//= require jquery_ujs
//= require turbolinks
//= require foundation
//= require_tree .
$(function() {
  $(document).foundation();
});

$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();
});