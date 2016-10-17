class AddUsernameToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :username, :string
    add_column :owners, :abn, :string
  end
end
