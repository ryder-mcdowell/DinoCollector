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
    if @workflow.success?
      redirect_to players_path
    else
      @player = @workflow.player
      render :new
    end
  end
end
