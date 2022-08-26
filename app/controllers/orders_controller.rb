class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @Order = Order.create(order_params)
  end

  def set_carts
    @order = Order.create(user_id: current_user.id, total: 0, state: 'cart')
    @cake= Cake.find(params[:cake_id])
    @lineitem = LineItem.create(cake_id:@cake.id,order_id: @order.id, quantity: 1, total:@cake.price)
    redirect_to carts_show_path
  end

    
  def checkout
    render 'form'
   @address = Address.new(address_params)

    if @address.save
      @address = Address.create(user_id: current_user.id)
      @order = Order.find(params[:order_id])
      @order = Order.update(order_id:@order.id,state:'complated')
    end
  end

  private
  
  def order_params
    params.require(:order).permit(:user_id, :total, :completed_at, :confirmed_at, :rejected_at, :state)
  end

  def line_params
    params.require(:line_item).permit(:cake_id, :quantity, :total)
  end

  def address_params
    params.require(:address).permit(:user_id,:first_name,:last_name,:city,:country,:state,:pincode,:address)
  end
end
