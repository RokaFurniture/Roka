$("<%= j(render @order) %>").appendTo("#orders").effect('highlight', {}, 1000)
$('#lazy_overlay').removeClass('active')
