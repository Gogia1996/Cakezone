class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @Order = Order.new(order_params)
  end

  def index
    @order = Order.all
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
    @order= Order.find(params[:id])
    @order.destroy
    redirect_to cakes_path
  end

  def update
    @order = Order.find(params[:id])
    @order.update!(state: params[:state])
    if params[:state]== 'confirmed'
      @order.update(:confirmed_at=> DateTime.now)
    elsif params[:state] == 'rejected'
      @order.update(:rejected_at=> DateTime.now)
    end
  end

  def history
    @orders = current_user.orders
  end

  private
  
  def order_params
    params.require(:order).permit(:user_id, :total, :completed_at, :confirmed_at, :rejected_at, :state)
  end

  def line_params
    params.require(:line_item).permit(:cake_id, :order_id,  :quantity, :total)
  end
end
