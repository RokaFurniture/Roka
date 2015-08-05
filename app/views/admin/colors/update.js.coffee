$("#edit_color_<%= @color.id %>").replaceWith("<%= j(render @color) %>")
