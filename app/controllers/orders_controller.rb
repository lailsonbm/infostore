class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
    current_cart.cart_items.each do |item|
      @order.order_items.build(product: item.product, quantity: item.quantity)
    end

    if @order.save
      flash[:success] = "Your order ##{@order.id} was placed. You will receive a confirmation e-mail shortly."
      current_cart.destroy
    else
      flash[:error] = "Could not process your order. Try again."
    end
    redirect_to catalog_path
  end
end
