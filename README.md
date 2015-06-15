implemented simple search

user authentication

link creation
add comments
like dislike using acts_As_votable gem

finding geo location of site using  ip address
used  'devise','simple_form','bootstrap-sass','acts_as_votable',geoip gems


slim
---------
gem 'slim', '~> 3.0.6'
gem 'slim-rails', '~> 3.0.1'

---------------------------
rails g controller homes index---cmd prompt

routes.rb
---------------
resources :homes, only: [:index]
 or
 resource :home, only: [:index]

index.html.slim will generated
change as per your requirement 
---------------------------------


