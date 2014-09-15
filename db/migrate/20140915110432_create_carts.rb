class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :num_items
      t.integer :total_price
      t.references :user

      t.timestamps
    end
  end
end
