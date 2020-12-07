class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.float :baths
      t.float :beds
      t.float :garages
      t.string :photo
      t.integer :squarem
      t.text :description
      t.string :title
      t.string :location
      t.integer :price
      t.string :pic1
      t.string :pic2
      t.string :pic3
      t.string :pic4
      t.string :pic5
      t.string :pic6
      t.string :pic7
      t.string :pic8
      t.string :pic9
      t.string :pic10

      t.timestamps
    end
  end
end
