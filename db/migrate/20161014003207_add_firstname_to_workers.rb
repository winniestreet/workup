class AddFirstnameToWorkers < ActiveRecord::Migration[5.0]
  def change
    add_column :workers, :firstname, :string
    add_column :workers, :lastname, :string
    add_column :workers, :photo, :file
  end
end
