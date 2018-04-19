class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def index
    @players = Player.all
  end

  def create
    @workflow = CreatesPlayer.new(name: params[:player][:name])
    @workflow.create
    redirect_to players_path
  end
end
