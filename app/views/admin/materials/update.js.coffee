console.log("<%= @material.id %>")
$("#edit_material_<%= @material.id %>").replaceWith("<%= j(render @material) %>")
