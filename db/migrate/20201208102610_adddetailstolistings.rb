class Adddetailstolistings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :caption, :string
  end
end
