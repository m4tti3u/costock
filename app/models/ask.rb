class Ask < ApplicationRecord
  belongs_to :collectible
  belongs_to :user

  scope :active, -> { where(progress: nil) }
  scope :lowest_price, -> { active.order(ask_price: :ASC).limit(1).first }
end
