$('#lazy_overlay').removeClass('active')
$("<%= j(render @output_material) %>").appendTo("#materials").effect('highlight', {}, 1000)
