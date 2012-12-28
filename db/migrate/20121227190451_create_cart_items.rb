class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.references :product
      t.references :cart
      t.integer :quantity

      t.timestamps
    end
  end
end
