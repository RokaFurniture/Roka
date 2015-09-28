set_datepicker = ->
  $.datepicker.setDefaults( $.datepicker.regional["uk"] )
  $('#input_date').datepicker({ dateFormat: 'dd.mm.yy' })
  $('#output_date').datepicker({ dateFormat: 'dd.mm.yy' })

set_colorpicker = ->
  $('#color_color').minicolors theme: 'bootstrap'

$(document).on('page:change', set_datepicker)
$(document).on('page:change', set_colorpicker)
