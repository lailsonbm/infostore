class Cart::ItemsController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    item = current_cart.add_or_update_item(product)
    flash[:success] = "#{item.name} was added to your cart."
    redirect_to cart_path
  end

  def destroy
    item = CartItem.find(params[:id])
    item.destroy
    flash[:error] = "#{item.name} was removed from your cart."
    redirect_to cart_path
  end

end
