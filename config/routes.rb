Rails.application.routes.draw do
	resources :todos
	root 'projects#index'
end
