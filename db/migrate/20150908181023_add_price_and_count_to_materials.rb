class AddPriceAndCountToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :price, :decimal, default: 0
    add_column :materials, :count, :integer, default: 0
  end
end
