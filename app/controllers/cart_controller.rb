class CartController < ApplicationController
	def new
	end

	def create
		@cart = Cart.new
		@cart.save
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end




end
