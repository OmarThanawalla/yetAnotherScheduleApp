MessageApp::Application.routes.draw do
	resources :registration
 
   match ':controller(/:action(/:id))(.:format)'
end
