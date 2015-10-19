$('#lazy_overlay').removeClass('active')
$("#color_<%= @color.id %>").replaceWith("<%= j(render @color) %>")
