require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(Food.new(name: 'Apple')).to be_valid
    end

    it 'is not valid without a name' do
      expect(Food.new).to_not be_valid
    end
  end
end
