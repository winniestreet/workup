class AddCalidToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :calendar_id, :string
  end
end
