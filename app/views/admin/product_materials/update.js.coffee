$('#lazy_overlay').removeClass('active')
$("#product_material_<%= @product_material.id %>").fadeOut(300, -> $(@).remove())
$("<%= j(render @product_material) %>").appendTo("#<%= @product_material.level %> .panel-body").effect('highlight', {}, 1000)
