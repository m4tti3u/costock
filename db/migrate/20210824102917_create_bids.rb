class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.references :nft, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :bid_price
      t.string :progress

      t.timestamps
    end
  end
end
