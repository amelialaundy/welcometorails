require 'rails_helper'

RSpec.describe User, :type => :model do
  describe do
    it "initializes a new user" do
      user = User.new
      expect(user).to be_a(User)
    end

    it "creates a cart for each new user" do
      user = User.create(email: "amelia@test.com", password: "password")
      expect(user.cart).to be_instance_of(Cart)
    end
  end
end
