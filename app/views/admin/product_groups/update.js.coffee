$('#lazy_overlay').removeClass('active')
$("#product_group_<%= @product_group.id %>").replaceWith("<%= j(render @product_group) %>")
