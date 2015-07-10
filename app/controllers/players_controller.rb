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
