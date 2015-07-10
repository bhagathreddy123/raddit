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
    respond_to do |format|
      format.js
    end
  end
  
  def update
    @game = Game.find(params[:game_id])
    @player = @game.players.find(params[:id])
    @player.update(player_params)
    respond_to do |format|
      format.js
    end
  end

  

  
  def delete
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

  def destroy
   @game= Game.find(params[:game_id])
   @player = @game.players.find(params[:id])
   @player.destroy
 end


 private
 
 def player_params
  params.require(:player).permit!
end

end
