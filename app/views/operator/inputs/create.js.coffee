$("<%= j(render @input) %>").appendTo(".inputs").effect('highlight', {}, 1000)
$("#new_input .form-control").val('')
