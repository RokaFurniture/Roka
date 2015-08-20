$("<%= j(render @product) %>").appendTo(".products").effect('highlight', {}, 1000)
$("#product_name").val('')
$("#product_description").val('')
$("#product_image").val('')
