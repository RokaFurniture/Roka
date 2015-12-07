$("<%= j(render @size) %>").appendTo("#sizes").effect('highlight', {}, 1000)
$("<option value='<%= @size.id %>'><%= @size.name %></option>").appendTo("#order_product_size_id")
$("#order_product_size_id").val("<%= @size.id %>")
$('#lazy_overlay').removeClass('active')
