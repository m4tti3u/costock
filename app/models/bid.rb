class Bid < ApplicationRecord
  belongs_to :collectible
  belongs_to :user

  validates :bid_price, presence: true

  # scope :active, -> { where(progress: nil) }
  # scope :highest_price, -> { active.order(bid_price: :DESC).limit(1).first }

  def self.ongoing
    self.where(progress: nil)
  end

  def self.highest
    self.where(progress: nil)
        .order(bid_price: :DESC)
        .limit(1)
        .first
  end
end
