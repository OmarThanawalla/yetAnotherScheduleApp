class RemoveDateFromAvailability < ActiveRecord::Migration
  def up
  	remove_column :availabilities, :date
  end

  def down
  	add_column :availabilities, :date
  end
end
