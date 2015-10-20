class ChangeProvider < ActiveRecord::Migration
  def change
    rename_column :providers, :adress, :address
  end
end
