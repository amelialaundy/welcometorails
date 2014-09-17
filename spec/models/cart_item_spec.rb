require 'rails_helper'

RSpec.describe CartItem, :type => :model do
  let(:product) { create(:product) }
  it "has a class method to build new carts" do
    expect(CartItem.build_from_product(product)).to be_instance_of(CartItem)
  end
end
