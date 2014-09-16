class CartItemsController < ApplicationController

  before_action :authenticate_user!
  def new
    @cart_item = CartItem.new
  end

  def index
    @cart_items = CartItem.all
  end

  def create
    @cart_item = CartItem.new(CartItem_params)
    if @cart_item.save
      redirect_to @cart_item
    else
      render 'new'
    end
  end

  def show
    @cart_item = CartItem.find(params[:id])
  end

  def edit
    @cart_item = CartItem.find(params[:id])
  end

  def update
    @cart_item = CartItem.find(params[:id])

    if @cart_item.update(CartItem_params)
      redirect_to @cart_item
    else
      render 'edit'
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy

    redirect_to cart_items_path
  end

  private
    def CartItem_params
      params.require(:cart_item).permit(:name, :price)
    end
end
