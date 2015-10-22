$('#lazy_overlay').removeClass('active')
$(".order_details").replaceWith("<%= j(render 'order_details') %>")
