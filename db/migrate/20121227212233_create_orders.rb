class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :card_number
      t.string :card_holder
      t.string :card_verification_code
      t.string :card_type

      t.timestamps
    end
  end
end
