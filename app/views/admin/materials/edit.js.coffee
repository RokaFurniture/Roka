$("#material_<%= @material.id %>").replaceWith("<%= j(render 'form') %>")
