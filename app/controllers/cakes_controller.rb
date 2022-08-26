class CakesController < ApplicationController
  before_action :set_carts_url
  

  def index
    @cake =Cake.all
  end

  def show
    @cake = Cake.find(params[:id])
  end
  
  def new
    @cake = Cake.new
  end

  def create
    @cake = Cake.new(cake_params)

    if @cake.save
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
