class Order < ActiveRecord::Base
  CARD_TYPES = ['Visa', 'Mastercard', 'American Express', 'Diners Club']

  has_many :order_items

  attr_accessible :address, :card_holder, :card_number, :card_type, :card_verification_code, :email, :name
  validates_presence_of :email, :name, :address#, :card_type, :card_number, :card_holder, :card_verification_code
end
