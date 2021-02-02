class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses
  # belongs_to :cocktail, through: :doses
end
