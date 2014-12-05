class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
