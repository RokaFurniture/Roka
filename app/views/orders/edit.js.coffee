$.lazybox("<%= j(render 'form') %>")
$('select').material_select()
$('.datepicker').pickadate()
$("label[for='order_number']").addClass('active')
$("label[for='order_date']").addClass('active')
$("label[for='order_deadline']").addClass('active') if $('#order_deadline').val() != ''
$("label[for='order_delivery_address']").addClass('active') if $('#order_delivery_address').val() != ''
$("label[for='order_comment']").addClass('active') if $('#order_comment').val() != ''
