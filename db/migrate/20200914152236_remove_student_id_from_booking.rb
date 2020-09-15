class RemoveStudentIdFromBooking < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :students_number, :integer
  end
end
