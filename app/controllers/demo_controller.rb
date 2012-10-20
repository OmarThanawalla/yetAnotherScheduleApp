class DemoController < ApplicationController

def index
	@myUser = User.all
	render :json => @myUser
end

def hello
	render("hello")
end	

def send_text_message
    #number_to_send_to = params[:number_to_send_to]
    
	number_to_send_to = ["4695697074","5125601205"]
	
	
	anotherNumber = "5125601205"
    twilio_sid = "AC22d3120e5e0ec3c8c2560e647bcef3b1"
    twilio_token = "4dd4eef0fa82a776e814d7553df64f81"
    twilio_phone_number = "9728107682"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

	for i in 0...number_to_send_to.length
		@twilio_client.account.sms.messages.create(
		  :from => "+1#{twilio_phone_number}",
		  :to => number_to_send_to[i], 
		  :body => "This is anoter message with two numbers. It gets sent to #{number_to_send_to}"
		)
    end
    
    
    render("messageSent")
  end

def inbound 
    # let's pretend that we've mapped this action to 
    # http://localhost:3000/sms in the routes.rb file
    
    message_body = params["Body"]
    from_number = params["From"]

    SMSLogger.log_text_message from_number, message_body
    puts "inbound action calledf;alskdjf;alskdfj;alskdjf;laskdjf;alskdfj;alsdkfj;lasdkfj;alsdkfjs;aldkfj;alsdkjf;alsdkjf;lasdkfj"
    #render("inbound")
  end

end
