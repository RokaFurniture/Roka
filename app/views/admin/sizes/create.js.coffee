$("<%= j(render @size) %>").appendTo(".sizes").effect('highlight', {}, 1000)
$("#new_size .form-control").val('')
