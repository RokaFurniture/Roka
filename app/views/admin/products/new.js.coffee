$("#product_form").html("<%= j(render 'form') %>")
$('select').material_select()
$('#product_groups_buttons a').removeClass('active')
$("#form_pg_<%= @product.product_group_id %>").addClass('active')
