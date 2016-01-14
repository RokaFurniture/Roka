$('#lazy_overlay').removeClass('active')
$("#user_<%= @user.id %>").replaceWith("<%= j(render @user) %>")
