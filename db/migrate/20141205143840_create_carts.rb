class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.belongs_to :user, index: true
      t.boolean :finished, default: false

      t.timestamps null: false
    end
    add_foreign_key :carts, :user
  end
end
