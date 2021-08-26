class RemoveNftFromAsks < ActiveRecord::Migration[6.0]
  def change
    remove_column :asks, :nft_id
    add_reference :asks, :collectible, foreign_key: true
  end
end
