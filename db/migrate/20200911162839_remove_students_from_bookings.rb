class RemoveStudentsFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :students, :integer
  end
end
