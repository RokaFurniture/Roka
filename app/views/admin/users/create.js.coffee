$('#lazy_overlay').removeClass('active')
$("<%= j(render @user) %>").appendTo('#users').effect('highlight', {}, 1000)
