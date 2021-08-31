class Collectible < ApplicationRecord
  belongs_to :user
  has_many :nfts, dependent: :destroy
  has_many :plots, dependent: :destroy
  has_one_attached :photo


  has_many :asks, dependent: :destroy
  has_many :bids, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_brand_and_model,
    against: [ :brand, :model ],
    using: {
      tsearch: { prefix: true }
    }

  def self.bid
    self.bids
        .where(user_id: current_user)
  end

  def self.ask
    self.asks
        .where(user_id: current_user)
  end

end
