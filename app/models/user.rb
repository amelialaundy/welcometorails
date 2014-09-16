class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true
  belongs_to :cart
  has_many :cart_items, through: :cart

  before_create :add_cart

private
  def add_cart
    self.build_cart
  end
end
