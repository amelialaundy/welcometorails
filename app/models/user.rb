class User < ActiveRecord::Base
  validates :name, :email, presence: true
  has_one :cart
  has_many :products, through: :cart
end
