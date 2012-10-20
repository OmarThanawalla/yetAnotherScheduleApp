class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
	  t.string :calendar_id
	  t.date :date
	  t.integer :user_id
	  t.boolean :AM12, :default => false
	  t.boolean :AM1 , :default => false
	  t.boolean :AM2 , :default => false
	  t.boolean :AM3 , :default => false
	  t.boolean :AM4 , :default => false
	  t.boolean :AM5 , :default => false
	  t.boolean :AM6 , :default => false
	  t.boolean :AM7 , :default => false
	  t.boolean :AM8 , :default => false
	  t.boolean :AM9 , :default => false
	  t.boolean :AM10 , :default => false
	  t.boolean :AM11 , :default => false
	  t.boolean :PM12 , :default => false
	  t.boolean :PM1, :default => false
	  t.boolean :PM2, :default => false
	  t.boolean :PM3, :default => false
	  t.boolean :PM4, :default => false
	  t.boolean :PM5, :default => false
	  t.boolean :PM6, :default => false
	  t.boolean :PM7, :default => false
	  t.boolean :PM8, :default => false
	  t.boolean :PM9, :default => false
	  t.boolean :PM10, :default => false
	  t.boolean :PM11, :default => false
      t.timestamps
    end
  end
end
