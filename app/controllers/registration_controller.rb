class RegistrationController < ApplicationController

  def index
  	phoneNumber = params[:phoneNumber]
  	password = params[:password]
  	
  	if User.where(:phoneNumber => phoneNumber, :password => password)
  	  render :json => ["Logged In"]
  	else
  	  render :json => ["Invalid phoneNumber or password"]
  	end  
  	 
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
