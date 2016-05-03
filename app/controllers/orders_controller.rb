class OrdersController < ApplicationController
  def new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  private

  def order_params
    params.require(:order).permit(:username, :phone, :message)
  end
end
