class CartItemsController < ApplicationController

  before_action :authenticate_user!

  def index
    @cart_items = CartItem.all
  end

  def create
    product = Product.find(params[:product_id])
    @cart_item = CartItem.build_from_product(product)

    if @cart_item.save
      redirect_to user_cart_items_path(@cart_item)

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

    if @cart_item.update(cart_item_params)
      redirect_to @cart_item
    else
      render 'edit'
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to user_cart_items_path
  end

  private
    def cart_item_params
      params.require(:product).permit(:name, :price)
    end
end
