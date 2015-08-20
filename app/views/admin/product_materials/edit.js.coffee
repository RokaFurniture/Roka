$("#product_material_<%= @product_material.id %>").replaceWith("<%= j(render 'form_materials') %>")
