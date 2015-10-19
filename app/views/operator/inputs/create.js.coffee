$('#lazy_overlay').removeClass('active')
$("<%= j(render @input) %>").appendTo("#inputs").effect('highlight', {}, 1000)
