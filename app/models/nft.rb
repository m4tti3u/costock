class Nft < ApplicationRecord
  belongs_to :collectible
  belongs_to :user
  has_many :transactions, dependent: :destroy

end
