$("<%= j(render @product_group) %>").appendTo(".product_groups").effect('highlight', {}, 1000)
$("#new_product_group .form-control").val('')
