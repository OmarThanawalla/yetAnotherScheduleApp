class AddDateToCalendar < ActiveRecord::Migration
  def change
  	add_column :calendars, :date, :date
  end
end
