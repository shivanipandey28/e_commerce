require 'rails_helper'

RSpec.describe Order, type: :model do
 describe 'associations' do
    it { should belong_to(:product).optional }
    it { should belong_to(:user).optional }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:pincode) }
    it { should validate_presence_of(:item_name) }
    it { should validate_presence_of(:quantity) }
    it { should validate_presence_of(:payment) }
    
    it { should validate_presence_of(:mobile) }
  end
end
