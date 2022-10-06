require 'rails_helper'

RSpec.describe Inventory, type: :model do
  # test associations.
  describe 'associations' do
    it 'has many InventoryFood' do
      assc = described_class.reflect_on_association(:inventory_foods)
      expect(assc.macro).to eq :has_many
    end

    it 'belongs to User' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
# test validations.
describe 'validations' do
  it 'is not valid without a name' do
    expect(Inventory.new).to_not be_valid
  end
end
