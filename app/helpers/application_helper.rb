module ApplicationHelper
  def active_class(my_controller)
    :active if controller.controller_name.to_s == my_controller.to_s
  end

  def delete_item_link(path)
    link_to path, data: { confirm: t('form.confirm') }, method: :delete, remote: true do
      content_tag(:i, 'delete', class: 'material-icons')
    end
  end

  def edit_item_link(path)
    link_to path, remote: true do
      content_tag(:i, 'assignment', class: 'material-icons')
    end
  end

  def order_status(status = 'init')
    t("order.status.#{status}")
  end
end
