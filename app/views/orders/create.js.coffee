$("#orders").prepend("<%= j(render @order) %>")
$("#order_<%= @order.id %>").effect('highlight', {}, 1000)
