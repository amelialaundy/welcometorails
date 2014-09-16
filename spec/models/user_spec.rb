require 'rails_helper'

RSpec.describe User, :type => :model do
  describe do
    it "a new user is initialized" do
      user = User.new
      expect(user).to be_a(User)
    end
  end
end
