class CreateScrapingValues < ActiveRecord::Migration[6.0]
  def change
    create_table :scraping_values do |t|
      t.date :date
      t.float :value

      t.timestamps
    end
  end
end
