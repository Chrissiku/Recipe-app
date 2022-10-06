require 'rails_helper'

RSpec.describe RecipeFood , type: :model do
    it { should belongs_to(:food) }
    it { should belongs_to(:recipe) }
    end