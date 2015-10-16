$("#worker_<%= @worker.id %>").fadeOut(500, -> $(@).remove())
