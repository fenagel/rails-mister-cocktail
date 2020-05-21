class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, presence: true
  validates :description, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail_id }
end
