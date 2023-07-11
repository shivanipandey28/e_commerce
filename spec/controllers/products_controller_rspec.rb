require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  describe "GET #index" do
    context "when user is authenticated" do
      it "assigns the user's orders to @orders" do
        user = create(:user)
        sign_in user

        product = create(:product, user_id: user.id)
        order1 = create(:order, user_id: user.id, product_id: product.id)
        order2 = create(:order, user_id: user.id, product_id: product.id)

        get :index

        expect(assigns(:orders)).to match_array([order1, order2])
      end
    end
  end

   describe "#create" do
  let(:user) { create(:user) } 
  let(:valid_params) { { order: { name: "John Doe", address: "123 Main St" } } }
  let(:invalid_params) { { order: { name: "", address: "" } } }

  before do
    sign_in user
  end

  context "with invalid parameters" do
    it "does not create a new order and redirects back to the order page" do
      expect {
        post :create, params: invalid_params
      }.not_to change { Order.count }

      expect(response).to redirect_to(assigns(:order))
      expect(flash[:notice]).to eq("order not placed, please fill the all details befor placed")
    end
  end
end
end
