class RemoveNftFromBids < ActiveRecord::Migration[6.0]
  def change
    remove_column :bids, :nft_id
    add_reference :bids, :collectible, foreign_key: true
  end
end
