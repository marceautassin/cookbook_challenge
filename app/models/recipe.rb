class Recipe < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :time_prep, :difficulty ],
    associated_against: {
      ingredient: [ :name, :category ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
