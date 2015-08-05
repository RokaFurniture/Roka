$("#product_<%= @product.id %>").fadeOut(500, -> $(@).remove())
