class EventController < ApplicationController
#before_filter :whoAreYou

	#POST /event
	def create
		userID = identifyMe()
		description = params[:description]
		location = params[:location]
		date = params[:date]
		duration = params[:duration]
		recipientsArray = params[:recipients]
		
		#create event record
		myCalendar = Calendar.create(:eventDescription => description, :location => location, :user_id => userID, :date => date)
		
		#create Person Table records for recipients
		for i in 0...recipientsArray.length
			recipientsDictionary = recipientsArray[i]
			
			recipientsFirstName = recipientsDictionary[:first]
			recipientsLastName = recipientsDictionary[:last]
			recipientsPhoneNumber = recipientsDictionary[:phoneNumber]
			
			#User record created
			User.create(:first => recipientsFirstName, :last => recipientsLastName, :phoneNumber => recipientsPhoneNumber)
			
			#look for users 
			myUser = User.where(:phoneNumber => recipientsPhoneNumber)
			
			#create Availability records for polls
			Availability.create(:calendar_id => myCalendar[0].id, :user_id => myUser[0].id) 
			
			#send text message to recipients 
			number_to_send_to = myUser[0].phoneNumber
			
			twilio_sid = "AC22d3120e5e0ec3c8c2560e647bcef3b1"
			twilio_token = "4dd4eef0fa82a776e814d7553df64f81"
			twilio_phone_number = "9728107682"
		
			@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
			
			@twilio_client.account.sms.messages.create(
			  :from => "+1#{twilio_phone_number}",
			  :to => number_to_send_to, 
			  :body => "This is anoter message with two numbers. It gets sent to #{number_to_send_to}"
			)

			render("messageSent")
			
		end
	
		
	end

	#GET events/new
	def new
		
	end
	
	def show
		puts params
	end
	
	
end
