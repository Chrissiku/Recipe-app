require 'rails_helper'

RSpec.describe User, type: :model do
  # test associations.
  describe 'associations' do
    it 'has many Inventories' do
      assc = described_class.reflect_on_association(:inventories)
      expect(assc.macro).to eq :has_many
    end

    it 'has many Recipes' do
      assc = described_class.reflect_on_association(:recipes)
      expect(assc.macro).to eq :has_many
    end
  end

  # test validations.
  describe 'validations' do
    it 'is not valid without a name' do
      expect(User.new).to_not be_valid
    end
  end
end
