class AddStreetToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :number, :string
    add_column :spaces, :street, :string
    add_column :spaces, :suburb, :string
    add_column :spaces, :state, :string
    add_column :spaces, :postcode, :string
    add_column :spaces, :country, :string
  end
end
