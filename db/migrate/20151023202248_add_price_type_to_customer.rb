class AddPriceTypeToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :price_type, :integer, default: 0
  end
end
