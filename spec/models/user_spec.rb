require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      user = User.create(email: "test2@example.com", password: "password", role: "buyer")
      expect(user).to be_valid
    end

    it "is not valid without an email" do
      user = User.create(password: "password", role: "buyer")
      expect(user).to_not be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is not valid without a password" do
      user = User.create(email: "test@example.com", role: "buyer")
      expect(user).to_not be_valid
      expect(user.errors[:password]).to include("can't be blank")
    end
  end

  describe "associations" do
      it { should have_many(:products) }
      it { should have_many (:orders) }
      it { should have_many (:cart_items) }
  end

  describe "associations" do
    it { should have_one(:cart)}    
  end

  describe 'callbacks' do
    context 'after_create' do
      it 'calls create_cart_for_buyer' do
        expect_any_instance_of(User).to receive(:create_cart_for_buyer)
        user = User.create(email: "test22@example.com", password: "password", role: "buyer")
      end
    end
  end

  context 'after_initialize' do
    it 'calls set_default_role if new record' do
      user = User.new
      expect(user).to receive(:set_default_role)
      user.send(:initialize)
    end
  end
end
