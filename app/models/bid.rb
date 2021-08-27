class Bid < ApplicationRecord
  belongs_to :collectible
  belongs_to :user

  # scope :active, -> { where(progress: nil) }
  # scope :highest_price, -> { active.order(bid_price: :DESC).limit(1).first }
  def self.highest
    self.where(progress: nil)
        .order(bid_price: :DESC)
        .limit(1)
        .first
  end
end
