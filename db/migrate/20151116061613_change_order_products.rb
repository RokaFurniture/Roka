class ChangeOrderProducts < ActiveRecord::Migration
  def change
    add_column :order_products, :price, :decimal
    add_column :orders, :sum, :decimal
    add_column :orders, :discount, :decimal
  end
end
