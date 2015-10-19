$('#lazy_overlay').removeClass('active')
$("#provider_<%= @provider.id %>").replaceWith("<%= j(render @provider) %>")
