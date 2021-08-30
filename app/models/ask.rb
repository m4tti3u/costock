class Ask < ApplicationRecord
  belongs_to :collectible
  belongs_to :user

  # scope :active, -> { where(progress: nil) }
  # scope :lowest_price, -> { active.order(ask_price: :ASC).limit(1).first }

  def self.ongoing
    self.where(progress: nil)
  end

  def self.lowest
    self.where(progress: nil)
        .order(ask_price: :ASC)
        .limit(1)
        .first
  end

end
