class Food < ApplicationRecord
  has_many :recipe_food, dependent: :destroy
  has_many :inventory_food, dependent: :destroy
  belongs_to :user, foreign_key: 'user_id'
  validates :name, presence: true
end
