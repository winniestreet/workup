class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.references :owner, foreign_key: true
      t.text :description
      t.boolean :wifi
      t.boolean :food
      t.boolean :meetroom
      t.float :price
      t.boolean :approved
      t.string :location

      t.timestamps
    end
  end
end
