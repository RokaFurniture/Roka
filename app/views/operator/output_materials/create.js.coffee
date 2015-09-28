$("<%= j(render @output_material) %>").appendTo("#materials").effect('highlight', {}, 1000)
$("#output_material_order").val('')
$("#output_material_count").val('')
