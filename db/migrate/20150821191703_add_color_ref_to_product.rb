class AddColorRefToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :color, index: true, foreign_key: true
  end
end
