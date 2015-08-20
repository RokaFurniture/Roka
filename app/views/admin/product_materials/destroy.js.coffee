$("#product_material_<%= @product_material.id %>").fadeOut(500, -> $(@).remove())
