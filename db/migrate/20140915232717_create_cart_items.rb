class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.string :name
      t.integer :price
      t.references :cart, index: true

      t.timestamps
    end
  end
end
