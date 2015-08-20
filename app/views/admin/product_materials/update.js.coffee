$("#edit_product_material_<%= @product_material.id %>").replaceWith("<%= j(render @product_material) %>")
