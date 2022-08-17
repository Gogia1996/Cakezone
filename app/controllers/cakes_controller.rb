class CakesController < ApplicationController
  def index
    @cakes=Cake.all
  end

  def show
    @cakes = Cake.find(params[:id])
  end
  
  def new
    @cakes=Cake.new
  end

  def create
    @cakes = Cake.new(cake_params)

    if @cakes.save
      redirect_to cakes_path, notice: 'Cake was successfully created.'
    else
      render 'new'
    end
  end




private
  def cake_params
    params.require(:cake).permit(:name, :description, :price, :image, :category)
  end

end
