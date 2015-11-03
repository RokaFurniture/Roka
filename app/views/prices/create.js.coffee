$("<%= j(render @price) %>").appendTo("#prices").effect('highlight', {}, 1000)
$('#lazy_overlay').removeClass('active')
