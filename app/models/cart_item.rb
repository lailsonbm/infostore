class CartItem < ActiveRecord::Base
  attr_accessible :cart, :product, :quantity
  belongs_to :cart
  belongs_to :product

  delegate :name, :price, to: :product

  def total_price
    price * quantity
  end
end
