//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery-ui/effect-highlight
//= require jquery.minicolors
//= require jquery.minicolors.simple_form
//= require materialize-sprockets
//= require turbolinks
//= require lazybox
//= require_tree .

var ready;
ready = function() {
  $('select').material_select();
  $('.datepicker').pickadate();
};

$(document).ready(ready);
$(document).on('page:load', ready);
