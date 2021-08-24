class CreateNfts < ActiveRecord::Migration[6.0]
  def change
    create_table :nfts do |t|
      t.references :collectible, null: false, foreign_key: true
      t.float :introduction_price
      t.float :current_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
