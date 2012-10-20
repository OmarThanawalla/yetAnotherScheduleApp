MessageApp::Application.routes.draw do
	resources :registration, :event
 
   match ':controller(/:action(/:id))(.:format)'
end
