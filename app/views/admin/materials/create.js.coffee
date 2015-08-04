$("<%= j(render @material) %>").appendTo(".materials").effect('highlight', {}, 1000)
$("#new_material .form-control").val('')
