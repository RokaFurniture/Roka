$('#lazy_overlay').removeClass('active')
$("#size_<%= @size.id %>").replaceWith("<%= j(render @size) %>")
