class AddUniqueKey < ActiveRecord::Migration
  def up
  	add_index :users, :phoneNumber, :unique => true
  end

  def down
  	remove_index :users, :column => :phoneNumber
  end
end
