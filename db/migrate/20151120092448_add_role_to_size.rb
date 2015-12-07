class AddRoleToSize < ActiveRecord::Migration
  def change
    add_column :sizes, :role, :integer
    Size.all.update_all(role: 0)
  end
end
