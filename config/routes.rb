Rails.application.routes.draw do
  devise_for :users
  resources :games do
    resources :reviews, except:[:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#index'
end
