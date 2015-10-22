class DeleteColorFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :color_id
  end
end
