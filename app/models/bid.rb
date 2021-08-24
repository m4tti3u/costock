class Bid < ApplicationRecord
  belongs_to :nft
  belongs_to :user
end
