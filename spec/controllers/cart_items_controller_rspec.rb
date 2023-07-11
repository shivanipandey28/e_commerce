require 'rails_helper'

RSpec.describe CartItemsController, type: :controller do
  describe "GET #index" do
    context "when user is authenticated" do
      before do
      user = create(:user)
      sign_in user
      cart = create(:cart, user: user)
      cart_item1 = create(:cart_item, cart: cart)
      cart_item2 = create(:cart_item, cart: cart)
      get :index
      end

      it "renders the index template" do
        expect(response).to render_template(:index)
      end
    end

    context "when user is not authenticated" do
      it "redirects to the sign-in page" do
       get :index
       expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe "DELETE #item_remove" do
    let(:user) { create(:user) }
    let(:cart) { create(:cart, user: user) }
    let!(:cart_item) { create(:cart_item, cart: cart) }

    before do
      sign_in user
    end

    context "when cart item is successfully destroyed" do
      it "redirects to the root path with a success notice" do
        expect {
          delete :item_remove, params: { id: cart_item.id }
        }.to change(CartItem, :count).by(-1)

        expect(response).to redirect_to(root_path)
         expect(flash[:notice].casecmp?("Your item deleted successfully.")).to eq(true)
      end
    end

    context "when cart item fails to be destroyed" do
      before do
        allow_any_instance_of(CartItem).to receive(:destroy).and_return(false)
      end

      it "redirects to the root path with a failure notice" do
        expect {
          delete :item_remove, params: { id: cart_item.id }
        }.not_to change(CartItem, :count)

        expect(response).to redirect_to(root_path)
        expect(flash[:notice]).to eq("Failed to delete item.")
      end
    end
  end
end
