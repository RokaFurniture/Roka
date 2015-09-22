class ChangeMaterialCountColumn < ActiveRecord::Migration
  def change
    change_column :materials, :count, :decimal
  end
end
