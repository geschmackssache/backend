class CreateStartscreens < ActiveRecord::Migration
  def change
    create_table :startscreens do |t|
      t.integer :zip

      t.timestamps null: false
    end
  end
end
