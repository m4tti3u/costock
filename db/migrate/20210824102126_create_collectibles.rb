class CreateCollectibles < ActiveRecord::Migration[6.0]
  def change
    create_table :collectibles do |t|
      t.string :category
      t.string :brand
      t.string :model
      t.string :reference
      t.float :retail_price
      t.float :resell_value
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.integer :nft_number

      t.timestamps
    end
  end
end
