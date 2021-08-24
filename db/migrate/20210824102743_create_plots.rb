class CreatePlots < ActiveRecord::Migration[6.0]
  def change
    create_table :plots do |t|
      t.string :name
      t.references :collectible, null: false, foreign_key: true
      t.references :scraping_value, null: false, foreign_key: true
      t.string :label

      t.timestamps
    end
  end
end
