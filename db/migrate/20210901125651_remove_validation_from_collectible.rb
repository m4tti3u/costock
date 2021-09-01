class RemoveValidationFromCollectible < ActiveRecord::Migration[6.0]
  def change
    remove_column :collectibles, :validation
  end
end
