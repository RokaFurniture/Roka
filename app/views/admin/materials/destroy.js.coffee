$("#material_<%= @material.id %>").fadeOut(500, -> $(@).remove())
