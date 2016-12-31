Rails.application.routes.draw do
 	devise_for :users
 	
#nest comments in message routes
 	resources :messages do
 		resources :comments
 	end
 	root 'messages#index'
end
