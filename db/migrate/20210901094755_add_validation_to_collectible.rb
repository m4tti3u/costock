class AddValidationToCollectible < ActiveRecord::Migration[6.0]
  def change
    add_column :collectibles, :validation, :boolean
  end
end
