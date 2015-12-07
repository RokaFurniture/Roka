$("<%= j(render @customer) %>").appendTo("#customers").effect('highlight', {}, 1000)
$("<li class><span><%= @customer.name %></span></li>").appendTo(".order_customer ul")
$("<option value='<%= @customer.id %>'><%= @customer.name %></option>").appendTo("#order_customer_id")
$('#order_customer_id').val("<%= @customer.id %>")
$('select').material_select()
$('#lazy_overlay').removeClass('active')

