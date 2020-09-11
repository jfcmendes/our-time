class AddStudentsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :students, :integer
  end
end
