set_datepicker = ->
  $.datepicker.setDefaults( $.datepicker.regional["uk"] )
  $('#input_date').datepicker({ dateFormat: 'dd.mm.yy' })
  $('#output_date').datepicker({ dateFormat: 'dd.mm.yy' })
