class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def update
    player = Player.find(params[:id])
    player.update(player_params)
    redirect_to(players_path)
  end

  def new
    @player = Player.new
  end

  def create
    Player.create(player_params)
    redirect_to(players_path)
  end

  def show
    @player = Player.find(params[:id])
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to(players_path)
  end

  def edit
    @player = Player.find(params[:id])
  end

  private
  def player_params
    params.require(:player).permit(:name, :position, :species, :team_id)
  end

end
