require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { create(:user) }
  describe "a new user" do

    it "initializes a new user" do
      expect(user).to be_a(User)
    end

    it "creates a cart for each new user" do
      expect(user.cart).to be_instance_of(Cart)
    end

    it "should have a has_one relationship with cart" do
      expect { create(:user).cart }.to_not raise_error
    end

    it { should validate_presence_of(:email) }


    it { should have_many(:cart_items) }
  end
end
