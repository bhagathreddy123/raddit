Rails.application.routes.draw do
 


  devise_for :users
  #root to: "links#index"
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

  root to: "geo_ip_request#new"
#get "/about_us" => "links#about_us"
end

