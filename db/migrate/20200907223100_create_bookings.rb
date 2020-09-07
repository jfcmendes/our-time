class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :day
      t.string :hour
      t.string :price
      t.integer :students_number
      t.string :speciality

      t.timestamps
    end
  end
end
