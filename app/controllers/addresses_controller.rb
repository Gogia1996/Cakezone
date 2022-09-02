class AddressesController < ApplicationController
  
  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id
    if @address.save
      @order = Order.last.update(state: 'completed', completed_at: DateTime.now)
    end
    redirect_to cakes_path
  end

  private
  def address_params
    params.require(:address).permit(:user_id,:first_name,:last_name,:city,:country,:state,:pincode,:address)
  end
end