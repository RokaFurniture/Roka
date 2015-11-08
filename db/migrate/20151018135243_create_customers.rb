class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.integer :price_type, default: 0

      t.timestamps null: false
    end
  end
end
