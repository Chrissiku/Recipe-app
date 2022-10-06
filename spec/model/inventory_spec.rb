require 'rails_helper'

RSpec.describe Inventory , type: :model do
    it { should have_many(:inventory_foods) }
    it { should belong_to(:user) }
    describe 'validations' do
        it 'is valid with valid attributes' do
            expect(Inventory.new(name: 'AAA')).to be_valid
        end

        it 'is not valid without a name' do
            expect(Inventory.new).to_not be_valid
        end
    end
    end