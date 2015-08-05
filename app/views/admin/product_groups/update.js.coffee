$("#edit_product_group_<%= @product_group.id %>").replaceWith("<%= j(render @product_group) %>")
