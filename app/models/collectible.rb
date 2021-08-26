class Collectible < ApplicationRecord
  belongs_to :user
  has_many :nfts, dependent: :destroy
  has_many :plots, dependent: :destroy
  has_one_attached :photo

  has_many :asks, dependent: :destroy
  has_many :bids, dependent: :destroy
end
