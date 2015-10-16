$('#lazy_overlay').removeClass('active')
$("#input_material_<%= @input_material.id %>}").replaceWith("<%= j(render @input_material) %>")
