class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :brand, null: false
      t.string :model, null: false
      t.integer :year, null: false
      t.string :fuel
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
