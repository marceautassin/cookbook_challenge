class Recipe < ApplicationRecord
  has_many :doses, dependent: :destroy, inverse_of: :recipe
  has_many :ingredients, through: :doses

   accepts_nested_attributes_for :doses,
                                allow_destroy: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :time_prep, :difficulty ],
    associated_against: {
      ingredients: [ :name, :category ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
