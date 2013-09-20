class AddWaterContentToSnapshop < ActiveRecord::Migration
  def change
    add_column :snapshops, :water_content, :float
  end
end
