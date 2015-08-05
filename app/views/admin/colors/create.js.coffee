$("<%= j(render @color) %>").appendTo(".colors").effect('highlight', {}, 1000)
$("#new_color .form-control").val('')
