Rails.application.routes.draw do
  devise_for :users
  root to: "links#index"
  resources :links do
  member do
    put "like", to: "links#upvote"
    put "dislike", to: "links#downvote"
  end 
  collection do 
    get :about_us
  end
   resources :comments
  end
  resource :geo_ip_request, controller: :geo_ip_request
  resources :homes, only: [:index]
  #root to: "geo_ip_request#new"
get "/about_us" => "links#about_us"
resources :games do
  collection do
    get :ajaxtest
  end
  resources :players do
   # get :delete
  end
end
end

