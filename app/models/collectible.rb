class Collectible < ApplicationRecord
  belongs_to :user
  has_many :nfts, dependent: :destroy
  has_many :plots, dependent: :destroy
end
