class CreateInputMaterial < ActiveRecord::Migration
  def change
    create_table :input_materials do |t|
      t.references :input, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true
      t.decimal :price
      t.decimal :count
    end
  end
end
