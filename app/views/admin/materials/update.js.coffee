$('#lazy_overlay').removeClass('active')
$("#material_<%= @material.id %>").replaceWith("<%= j(render @material) %>")
