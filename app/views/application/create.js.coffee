$("<%= j(render object) %>").appendTo("#<%= object.model_name.plural.underscore %>").effect('highlight', {}, 1000)
