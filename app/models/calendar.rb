class Calendar < ActiveRecord::Base
  attr_accessible :eventDescription, :location, :user_id, :date
end
