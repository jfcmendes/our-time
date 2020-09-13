class RemoveHourFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :hour
  end
end
