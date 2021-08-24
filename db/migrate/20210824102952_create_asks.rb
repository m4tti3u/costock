class CreateAsks < ActiveRecord::Migration[6.0]
  def change
    create_table :asks do |t|
      t.references :nft, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :ask_price
      t.string :progress

      t.timestamps
    end
  end
end
