class RemoveSpecialityFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :speciality, :string
  end
end
