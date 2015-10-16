$("<%= j(render @color) %>").appendTo("#colors").effect('highlight', {}, 1000)
$('#lazy_overlay').removeClass('active')
