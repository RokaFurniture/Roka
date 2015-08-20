$("<%= j(render @product_material) %>").appendTo("#<%= @product_material.level %> .panel-body").effect('highlight', {}, 1000)
$("#product_material_material_id").val('')
$("#product_material_value").val('')
