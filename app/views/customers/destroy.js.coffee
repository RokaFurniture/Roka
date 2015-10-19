$("#customer_<%= @customer.id %>").fadeOut(500, -> $(@).remove())
