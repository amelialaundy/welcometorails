class UsersController < ApplicationController
  # def index
  # end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)
  #   puts "after user"
  #   @user.cart = Cart.create
  #   puts @user.cart
  #   if @user.save
  #     redirect to @user
  #   else
  #     render 'new'
  #   end
  # end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
