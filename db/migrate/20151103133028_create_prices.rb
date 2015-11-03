class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.references :product, index: true, foreign_key: true
      t.decimal :value
      t.decimal :white
      t.decimal :sides
      t.decimal :retail
    end
  end
end
