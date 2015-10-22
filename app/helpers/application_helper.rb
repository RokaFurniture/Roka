module ApplicationHelper
  def active_class(my_controller)
    :active if controller.controller_name.to_s == my_controller.to_s
  end

  def delete_item_link(path, style = 'btn btn-raised mdi-content-clear')
    link_to '', path, data: { confirm: t('form.confirm') },
                      method: :delete, remote: true, class: style
  end

  def edit_item_link(path, style = 'btn btn-raised mdi-editor-border-color')
    link_to '', path, remote: true, class: style
  end
end
