$('#lazy_overlay').removeClass('active')
$("#order_<%= @order.id %>").replaceWith("<%= j(render @order) %>")
