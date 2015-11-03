$('#lazy_overlay').removeClass('active')
$("#price_<%= @price.id %>").replaceWith("<%= j(render @price) %>")
