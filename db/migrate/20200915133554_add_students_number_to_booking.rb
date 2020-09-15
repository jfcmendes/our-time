class AddStudentsNumberToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :students_number, :integer
  end
end
