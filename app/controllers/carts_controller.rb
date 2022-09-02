class CartsController < ApplicationController

  def show
    @line_item = LineItem.all
  end
end
