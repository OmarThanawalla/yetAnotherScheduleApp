class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :first
	  t.string :last
	  t.string :phoneNumber, :null => false
	  t.string :password
      t.timestamps
    end
  end
end
