class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  def whoAreYou
  
  phoneNumber = params[:phoneNumber]
  	password = params[:password]
  	
  	@result = ["False"]
  	myUser = User.where(:phoneNumber => phoneNumber, :password => password)
  	if (myUser.length == 1 )
  	  return true
  	else
  	
  	 render :file => "public/401.html", :status => :unauthorized
  	 return false
  	end
  
  end
  
  protected
  def identifyMe
    phoneNumber = params[:phoneNumber]
  	password = params[:password]
  	myUser = User.where(:phoneNumber => phoneNumber, :password => password)
  	if (myUser.length == 1 )
  	  return myUser[0].id
  	end
  
  end
  
  
end
