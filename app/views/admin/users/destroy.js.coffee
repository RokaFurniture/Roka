$("#user_<%= @user.id %>").fadeOut(500, -> $(@).remove())
