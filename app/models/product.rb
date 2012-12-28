class Product < ActiveRecord::Base
  attr_accessible :caption, :description, :image, :name, :price

  validates_presence_of :name, :description, :price
  validates_uniqueness_of :name

end
