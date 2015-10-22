$('#lazy_overlay').removeClass('active')
$("<%= j(render @order_product) %>").appendTo("#order_products").effect('highlight', {}, 1000)
