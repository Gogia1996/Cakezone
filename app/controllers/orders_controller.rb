class OrdersController < ApplicationController
  before_action :set_carts

  def new
    @order = Order.new
  end

  def create
    @Order = Order.create(order_params)
  end

  def set_carts
    debugger
    @order = Order.create(user_id: current_user.id, total: 0, state: 'cart')
    debugger
    @cake= Cake.find(params[:cake_id])
    debugger
    @lineitem = LineItem.create(cake_id:@cake.id,order_id: @order.id, quantity: 1, total:@cake.price)
    debugger
    redirect_to carts_show_path
  end

    
  def checkout
    @address = Address.new
    render 'form'
  end

  private
  
  def order_params
    params.require(:order).permit(:user_id, :total, :completed_at, :confirmed_at, :rejected_at, :state)
  end

  def line_params
    params.require(:line_item).permit(:cake_id, :quantity, :total)
  end
end
