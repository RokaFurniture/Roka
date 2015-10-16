$('#lazy_overlay').removeClass('active')
$("<%= j(render @provider) %>").appendTo("#providers").effect('highlight', {}, 1000)
