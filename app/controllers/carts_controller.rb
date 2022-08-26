class CartsController < ApplicationController
  before_action :checkout_url

  def show
    @line_item = LineItem.all
  end
end
