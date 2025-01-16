class CreateOwners < ActiveRecord::Migration[8.0]
  def change
    create_table :owners do |t|
      t.string :nickname, null: false

      t.timestamps
    end
  end
end
