class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
