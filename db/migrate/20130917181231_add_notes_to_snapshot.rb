class AddNotesToSnapshot < ActiveRecord::Migration
  def change
    add_column :snapshots, :notes, :text
  end
end
