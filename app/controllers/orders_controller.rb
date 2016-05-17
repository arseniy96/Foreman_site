class OrdersController < ApplicationController
  def new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    else
      @error = @order.errors.full_messages.first
      render action: 'new'
    end
  end

  private

  def order_params
    params.require(:order).permit(:username, :phone, :message)
  end
end
