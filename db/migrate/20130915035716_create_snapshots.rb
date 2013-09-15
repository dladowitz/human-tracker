class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.integer :calmness
      t.integer :happiness
      t.boolean :exercise
      t.integer :exercise_min
      t.float :weight
      t.float :body_fat

      t.timestamps
    end
  end
end
