class Cart < ActiveRecord::Base
  has_many :cart_items
  has_many :products, through: :cart_items

  delegate :size, :empty?, to: :cart_items

  def total_price
    cart_items.map(&:total_price).reduce(&:+)
  end

  def add_or_update_item(product)
    item = cart_items.where(product_id: product).first
    if item
      item.quantity += 1
      item.save
      item
    else
      cart_items.create(product: product, quantity: 1)
    end
  end

  def has_product?(product)
    products.include? product
  end
end
