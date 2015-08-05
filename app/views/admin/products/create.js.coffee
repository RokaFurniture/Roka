$("<%= j(render @product) %>").appendTo(".products").effect('highlight', {}, 1000)
$("#new_product .form-control").val('')
