require 'rails_helper'

RSpec.describe Recipe , type: :model do
    it { should belongs_to(:user) }
    it { should has_many(:recipe_foods) }
    it { should has_many(:foods).through(:recipe_foods) }
    end