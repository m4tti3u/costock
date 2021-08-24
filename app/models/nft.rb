class Nft < ApplicationRecord
  belongs_to :collectible
  belongs_to :user
  has_many :transactions, dependent: :destroy
  has_many :asks, dependent: :destroy
  has_many :bids, dependent: :destroy
end
