class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  include PgSearch::Model

  pg_search_scope :search_by_size,
    against: [ :size ]

  pg_search_scope :search_by_quality,
    against: [ :quality ]

  pg_search_scope :search_by_location,
    associated_against: {
      user: [:location]
    }
end
