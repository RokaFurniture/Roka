console.log("#material_<%=@material.id%>")
$("#material_<%= @material.id %>").replaceWith("<%= j(render 'form') %>")
