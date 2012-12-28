class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  attr_accessible :product, :order, :quantity
end
