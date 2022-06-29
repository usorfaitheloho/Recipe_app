class Recipe < ApplicationRecord
  belongs_to :user
  has_many :food_recipes, dependent: :destroy
  has_many :food, through: :food_recipes, dependent: :destroy
end
