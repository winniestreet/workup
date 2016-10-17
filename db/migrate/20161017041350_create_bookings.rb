class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :space, foreign_key: true
      t.references :worker, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
