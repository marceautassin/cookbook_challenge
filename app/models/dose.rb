class Dose < ApplicationRecord
  belongs_to :recipe, inverse_of: :doses
  belongs_to :ingredient
end
