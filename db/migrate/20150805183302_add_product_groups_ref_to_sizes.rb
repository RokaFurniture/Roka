class AddProductGroupsRefToSizes < ActiveRecord::Migration
  def change
    add_reference :sizes, :product_group, index: true, foreign_key: true
  end
end
