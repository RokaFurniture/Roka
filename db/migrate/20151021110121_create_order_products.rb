class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :size, index: true, foreign_key: true
      t.references :color, index: true, foreign_key: true
      t.integer :count, default: 1
      t.string :patina
      t.string :comment
    end
  end
end
