class UpdateColumnsOnBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :date
    add_column :bookings, :day, :string
    add_column :bookings, :hour, :string
  end
end
