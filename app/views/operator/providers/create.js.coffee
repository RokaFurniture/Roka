if $('#lazy_overlay').hasClass('active')
  $('#lazy_overlay').removeClass('active')
  $('#input_provider_id').prepend("<option value='<%= @provider.id%>'><%= @provider.name %></option>")
  $('#input_provider_id option:first').attr('selected', 'selected')
else
  $("<%= j(render @provider) %>").appendTo(".providers").effect('highlight', {}, 1000)
  $("#new_provider .form-control").val('')
