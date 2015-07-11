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
----------------------
game 1-many player
----------------
routes.rb
-----------
resources :games do
  collection do
    get :ajaxtest
  end
  resources :players do
   # get :delete
  end
end
----------------
class PlayersController < ApplicationController
  
  def create
    @game = Game.find(params[:game_id])
    @player = @game.players.create(player_params)
    if @player.save
      redirect_to game_path(@game)
    end
  end
  
  def edit
    @game = Game.find(params[:game_id]) 
    @player = @game.players.find(params[:id])
  end
  
  def update
    @game = Game.find(params[:game_id])
    @player = @game.players.find(params[:id])
    if @player.update(player_params)
      redirect_to game_path(@game)
    else
      render :action => :edit
    end
  end

  
  def destroy
    @game= Game.find(params[:game_id])
    @player = @game.players.find(params[:id])
    @player.destroy
    redirect_to game_path(@game)
  end
  
  
  
  private
  
  def player_params
    params.require(:player).permit!
  end
end
------------------------------
game/show.html.erb
---------------------
<h2> Game Name</h2>
<%= @game.name %>



<h2>Players information</h2>
<% @game.players.each do |player| %>
<%= player.name %>
<%= player.country %>
<%= link_to "Edit",edit_game_player_path(player.game,player) %>
<%=link_to "Delete", game_player_path(player.game, player), :method => :delete%>
<%end%>





<h2>Add Player </h2>
<%= form_for([@game,@game.players.build]) do |f|  %>
  <div class="form-group">
      <%= f.label :Name %>
      <%= f.text_field :name %>
  </div>
  <div class="form-group">
      <%= f.label :Country %>
      <%= f.text_field :country %>
  </div>
      <%= f.submit %>


<%end%>

<%= link_to "Back", games_path, :class => "btn btn-default" %>    
-------------------------------------------------------------

Game-players ajax edit delete operations working.