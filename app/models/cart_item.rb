class CartItem < ActiveRecord::Base
  belongs_to :cart

  def self.build_from_product(product)
    new(name: product.name, price: product.price)
  end
end
