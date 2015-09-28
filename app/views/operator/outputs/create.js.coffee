$("<%= j(render @output) %>").appendTo(".outputs").effect('highlight', {}, 1000)
$("#new_output .form-control").val('')
