$('#lazy_overlay').removeClass('active')
$(".product").replaceWith("<%= j(render 'product_show') %>")
