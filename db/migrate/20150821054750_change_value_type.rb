class ChangeValueType < ActiveRecord::Migration
  def change
    change_column :product_materials, :value, :decimal
  end
end
