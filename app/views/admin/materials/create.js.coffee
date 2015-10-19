$("<%= j(render @material) %>").appendTo("#materials").effect('highlight', {}, 1000)
$('#lazy_overlay').removeClass('active')
