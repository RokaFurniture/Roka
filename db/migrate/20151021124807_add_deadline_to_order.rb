class AddDeadlineToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :deadline, :date
  end
end
