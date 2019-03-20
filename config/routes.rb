Rails.application.routes.draw do
  resources :gameurls
  get '/searchurl', :controller=>'gameurls', :action=>'checkgameurl'
  post '/validate', :controller=>'gameurls', :action=>'validateurl'

  devise_for :users

  resources :games do
    collection do
      get 'search'
    end
    resources :reviews, except:[:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#index'
end
