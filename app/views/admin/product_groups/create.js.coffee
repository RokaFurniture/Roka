$("<%= j(render @product_group) %>").appendTo("#product_groups").effect('highlight', {}, 1000)
$('#lazy_overlay').removeClass('active')
