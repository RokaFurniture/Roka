class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number
      t.string :delivery_address
      t.references :customer, index: true, foreign_key: true
      t.date :date
      t.date :deadline
      t.string :comment
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
