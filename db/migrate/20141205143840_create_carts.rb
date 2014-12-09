class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.integer :zip
      t.string :city
      t.string :phone
      t.string :email
      t.boolean :finished, default: false
      t.belongs_to :user, index: true
      
      t.timestamps null: false
    end
    add_foreign_key :carts, :user
  end
end
