class LineItemsController < ApplicationController

  def update
    @line_item = LineItem.find(params[:id])
    @line_item.update(line_params)
  end

  private
  def line_params
    params.require(:line_item).permit(:quantity, :total)
  end

  
end
