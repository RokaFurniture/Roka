class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :option
      t.string :unit
      t.decimal :price, default: 0
      t.decimal :count, default: 0

      t.timestamps null: false
    end
  end
end
