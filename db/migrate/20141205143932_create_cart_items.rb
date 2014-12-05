class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :product, index: true
      t.integer :quantity, default: 1

      t.timestamps null: false
    end
    add_foreign_key :cart_items, :carts
    add_foreign_key :cart_items, :products
  end
end
