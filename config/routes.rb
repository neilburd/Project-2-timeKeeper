Rails.application.routes.draw do

  resources :jobs do
    resources :timers
  end

  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'jobs#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
