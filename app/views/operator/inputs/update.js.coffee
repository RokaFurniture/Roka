$("#edit_provider_<%= @provider.id %>").replaceWith("<%= j(render @provider) %>")
