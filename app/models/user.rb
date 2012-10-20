class User < ActiveRecord::Base
   	attr_accessible :first, :last, :phoneNumber, :password
end
