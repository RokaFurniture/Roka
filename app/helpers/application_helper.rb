module ApplicationHelper
  def active_class(my_controller)
    :active if controller.controller_name.to_s == my_controller.to_s
  end

  def delete_item_link(path, klass = '')
    link_to path, data: { confirm: t('form.confirm'), position: 'top', delay: '50', tooltip: t('delete_tooltip') }, method: :delete, remote: true, class: "#{klass} tooltipped" do
      content_tag(:i, 'delete', class: 'material-icons')
    end
  end

  def edit_item_link(path, klass = '')
    link_to path, data: { position: 'top', delay: '50', tooltip: t('edit_tooltip') }, remote: true, class: "#{klass} tooltipped" do
      content_tag(:i, 'create', class: 'material-icons')
    end
  end

  def order_status(status = 'init')
    t("order.status.#{status}")
  end
end
