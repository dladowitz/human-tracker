class AddGraphIdToSnapshot < ActiveRecord::Migration
  def change
    add_column :snapshots, :graph_id, :integer
  end
end
