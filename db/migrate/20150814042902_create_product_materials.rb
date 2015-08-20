class CreateProductMaterials < ActiveRecord::Migration
  def change
    create_table :product_materials do |t|
      t.references :product, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true
      t.integer :level, default: 0
      t.integer :value, default: 0

      t.timestamps null: false
    end
  end
end
