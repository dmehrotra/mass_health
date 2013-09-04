class ColumnDrop < ActiveRecord::Migration
  def up
    remove_column :town_health_records, :total_poverty_percentage 
  end
  def down
    add_column  :town_health_records, :total_poverty_percentage, :float
  end
end
