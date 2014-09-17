require 'rails_helper'

RSpec.describe User, :type => :model do
  describe do
    let(:user) { create(:user) }
    it "initializes a new user" do
      expect(user).to be_a(User)
    end

    it "creates a cart for each new user" do
      expect(user.cart).to be_instance_of(Cart)
    end
  end
end
