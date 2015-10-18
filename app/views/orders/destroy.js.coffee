$("#order_<%= @order.id %>").fadeOut(500, -> $(@).remove())
