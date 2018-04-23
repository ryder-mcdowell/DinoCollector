class DinosController < ApplicationController
  def new
    @dino = Dino.new
  end

  def index
    @dinos = Dino.all
  end

  def create
    @workflow = CreatesDino.new(name: params[:dino][:name],
    attack: params[:dino][:attack], defence: params[:dino][:defence],
    health: params[:dino][:health])
    @workflow.create
    if @workflow.success?
      redirect_to dinos_path
    else
      @dino = @workflow.dino
      render :new
    end
  end
end
