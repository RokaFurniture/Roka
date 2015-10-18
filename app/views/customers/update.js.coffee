$('#lazy_overlay').removeClass('active')
$("#customer_<%= @customer.id %>").replaceWith("<%= j(render @customer) %>")
