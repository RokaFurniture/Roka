$('#lazy_overlay').removeClass('active')
$("#worker_<%= @worker.id %>").replaceWith("<%= j(render @worker) %>").
