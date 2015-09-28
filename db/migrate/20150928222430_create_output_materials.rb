class CreateOutputMaterials < ActiveRecord::Migration
  def change
    create_table :output_materials do |t|
      t.references :output, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true
      t.integer :count
    end
  end
end
