implemented simple search

user authentication

link creation
add comments
like dislike using acts_as_votable gem bundle install
rails generate acts_as_votable:migration
rake db:migrate
link model we specify  acts_as_votable

2 routes like dislike put action specified in routes and links contoller we write 2 actions.
beautiful design for links index show pages with like dislike buttons.
good header section

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


