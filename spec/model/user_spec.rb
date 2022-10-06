require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
        expect(User.new(email: 'AAA@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'AAA', last_name: 'BBB')).to be_valid
    end

    it 'is not valid without a name' do
        expect(User.new).to_not be_valid
    end
  end

  it { should have_many(:inventories) }
  it { should have_many(:recipes) }
  
end




