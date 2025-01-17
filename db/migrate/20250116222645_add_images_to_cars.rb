class AddImagesToCars < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :images, :string
  end
end
