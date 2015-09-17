class CreateInput < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.string :num
      t.date :date
      t.references :provider, index: true, foreign_key: true
    end
  end
end
