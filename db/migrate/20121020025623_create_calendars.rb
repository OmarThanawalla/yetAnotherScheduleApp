class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
	  t.string :eventDescription
	  t.string :location
	  t.integer :user_id
      t.timestamps
    end
  end
end
