class CreateOutputs < ActiveRecord::Migration
  def change
    create_table :outputs do |t|
      t.string :num
      t.date :date
      t.string :order
      t.belongs_to :worker, index: true
    end
  end
end
