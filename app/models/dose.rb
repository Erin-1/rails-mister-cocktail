class Dose < ApplicationRecord
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
  validates :ingredient, presence: true
  validates :description, presence: true
  belongs_to :ingredient
  belongs_to :cocktail
end
