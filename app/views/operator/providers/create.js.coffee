$("<%= j(render @provider) %>").appendTo(".providers").effect('highlight', {}, 1000)
$("#new_provider .form-control").val('')
