class CreateProvider < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :adress
    end
  end
end
