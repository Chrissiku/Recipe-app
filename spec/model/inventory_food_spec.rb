require 'rails_helper'

RSpec.describe InventoryFood , type: :model do
    it { should belongs_to(:food) }
    it { should belongs_to(:inventory) }
    end