$("#product_group_<%= @product_group.id %>").replaceWith("<%= j(render 'form') %>")
