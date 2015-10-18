$("<%= j(render @customer) %>").appendTo("#customers").effect('highlight', {}, 1000)
$('#lazy_overlay').removeClass('active')
