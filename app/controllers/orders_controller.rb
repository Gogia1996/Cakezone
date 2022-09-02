class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @Order = Order.new(order_params)
  end


  def cart
    order = Order.create(user_id: current_user.id, total: 0, state: 'cart')
    line_item = LineItem.create(cake_id: params[:cake_id], order_id: order.id, quantity: 1, total: params[:price])
    @line_items = order.line_items
  end   

  def checkout
    @address = Address.new
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to cakes_path
  end

  private
  
  def order_params
    params.require(:order).permit(:user_id, :total, :completed_at, :confirmed_at, :rejected_at, :state)
  end

  def line_params
    params.require(:line_item).permit(:cake_id, :order_id,  :quantity, :total)
  end
end
