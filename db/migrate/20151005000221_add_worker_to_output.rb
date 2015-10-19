class AddWorkerToOutput < ActiveRecord::Migration
  def change
    add_reference :outputs, :worker, index: true, foreign_key: true
  end
end
