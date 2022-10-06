class LineItemsController < ApplicationController
 
  def edit
  end
  
  def update
    @line_item = LineItem.find(params[:id])
    @line_item.update(line_params)
  end

  private
  def line_params
  end

  
end
