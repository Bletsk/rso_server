Rails.application.routes.draw do
	resources :todos do
		collection do
			get :all
		end
	end
	resources :projects do
		collection do
			get :all
		end
	end
	root 'projects#index'
end
