class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :name
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.integer :number_of_spots
      t.boolean :full_trip
      t.integer :cost

      t.timestamps null: false
    end
  end
end
