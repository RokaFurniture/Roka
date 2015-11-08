class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :height
      t.integer :length
      t.integer :width
      t.belongs_to :product_group, index: true

      t.timestamps null: false
    end
  end
end
