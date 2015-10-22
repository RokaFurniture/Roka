$('#lazy_overlay').removeClass('active')
$("#order_product_<%= @order_product.id %>").replaceWith("<%= j(render @order_product) %>")
