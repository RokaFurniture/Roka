$("#product_<%= @product.id %>").replaceWith("<%= j(render 'form') %>")
