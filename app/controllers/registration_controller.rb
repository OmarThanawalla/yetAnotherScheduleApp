class RegistrationController < ApplicationController

#GET /registration
  def index
  	phoneNumber = params[:phoneNumber]
  	password = params[:password]
  	
  	@result = ["False"]
  	myUser = User.where(:phoneNumber => phoneNumber, :password => password)
  	if (myUser.length == 1 )
  	  @result = ["Logged In"]
  	else
  	  @result = ["Invalid phoneNumber or password"]
  	end  
  	 
  	 render :json => @result
  end
  
  #get registration/new
  def new
  	
  end

	#post registration/create
  def create
  	firstName = params[:first]
  	lastName = params[:last]
  	phoneNumber = params[:phoneNumber]
  	password = params[:password]
  	
  	@result = ["default"]
  	if User.create(:first => firstName, :last => lastName, :phoneNumber => phoneNumber, :password => password)
  		@result = ["True"]
  	else
  		@result  = ["False"]
  	end
  	
  	render :json => @result
  	
  end
  
  
  def show
  	render ("index")
  end
  
  
end
