class CakesController < ApplicationController
  def index
    @cakes=Cake.all
  end

  def new
    @cakes=Cake.new
  end

  def create
    @cakes = Cake.new

    if @cakes.save
      redirect_to cakes_path, notice: 'Cake was successfully created.'
    else
      render 'new'
    end
  end


end
