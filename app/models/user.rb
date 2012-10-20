class User < ActiveRecord::Base
   	attr_accessible :first, :last, :phoneNumber, :password
   	
   	validates_uniqueness_of :phoneNumber
end
