require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do
   let(:product) { create(:product) }
  describe "GET index method" do
    it "displays all products" do
      get :index
      expect(response).to render_template(:index)
    end

    it "assigns @products" do
      get :index
      expect(assigns(:products)).to eq([product])
    end
  end

  describe "POST create method" do

    it "creates a new product" do
      expect{
        post :create, product: FactoryGirl.attributes_for(:product)
      }.to change(Product, :count).by(1)
    end

    it "redirects to the product#show" do
      post :create, product: FactoryGirl.attributes_for(:product)
      expect(response).to redirect_to(assigns(:product))
    end

  end
end
