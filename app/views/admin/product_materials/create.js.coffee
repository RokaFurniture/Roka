$("<%= j(render @product_material) %>").appendTo("#<%= @product_material.level %> .panel-body").effect('highlight', {}, 1000)
$('#lazy_overlay').removeClass('active')
