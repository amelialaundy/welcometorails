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

    it "creates a new product with correct params" do
      expect{
        post :create, product: FactoryGirl.attributes_for(:product)
      }.to change(Product, :count).by(1)
    end

    it "does not create a new product with incorrect params" do
      expect{
      post :create
      }.to raise_error
    end

    it "redirects to the product#show after creating a new product" do
      post :create, product: FactoryGirl.attributes_for(:product)
      expect(response).to redirect_to(assigns(:product))
    end
  end

  describe "GET new method" do
    it "renders a new product form" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "GET edit method" do




    context "hitting the db" do
      let(:product) { create(:product) }
      before(:each) do
        get :edit, id: product
      end
      it "renders an edit product form" do
        expect(response).to render_template(:edit)
      end

      it "finds the right product to edit" do
        expect(assigns(:product)).to eq(product)
      end
    end

    context "not hitting the db, using doubles" do
      let(:product) {double("product")}

      it "finds the specific product" do
        expect(Product).to receive(:find).once.and_return(product)
        get :edit, id: product
      end

      it "renders an edit product form" do
        get :edit, id: product
        expect(response).to render_template(:edit)
      end
    end

  end
end
