$("<%= j(render @product) %>").appendTo("#products").effect('highlight', {}, 1000)
$('#lazy_overlay').removeClass('active')
