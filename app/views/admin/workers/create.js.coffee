$('#lazy_overlay').removeClass('active')
$("<%= j(render @worker) %>").appendTo('#workers').effect('highlight', {}, 1000)
