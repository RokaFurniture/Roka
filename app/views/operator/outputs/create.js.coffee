$('#lazy_overlay').removeClass('active')
$("<%= j(render @output) %>").appendTo(".outputs").effect('highlight', {}, 1000)
