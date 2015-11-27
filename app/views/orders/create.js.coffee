$('#lazy_overlay').removeClass('active')
$("<%= j(render @order) %>").appendTo("#orders").effect('highlight', {}, 1000)
