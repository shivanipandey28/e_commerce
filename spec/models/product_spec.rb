require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "associations" do
    it { should belong_to(:category).optional }
    it { should belong_to(:user).optional }
    it { should have_many(:orders).dependent(:destroy) }
    it { should have_one_attached(:image) }
  end

  describe "validations" do
    it { should validate_presence_of(:category_id) }
    it { should validate_presence_of(:user_id) }
  end
end
