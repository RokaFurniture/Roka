class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.belongs_to :product_group, index: true
      t.belongs_to :size, index: true
      t.belongs_to :color, index: true
    end
  end
end
