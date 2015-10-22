$("#order_product_<%= @order_product.id %>").fadeOut(500, -> $(@).remove())
