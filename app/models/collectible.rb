class Collectible < ApplicationRecord
  belongs_to :user
  has_many :nfts, dependent: :destroy
  has_many :plots, dependent: :destroy
  has_many_attached :photos


  has_many :asks, dependent: :destroy
  has_many :bids, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_brand_and_model,
    against: [ :brand, :model ],
    using: {
      tsearch: { prefix: true }
    }
end
