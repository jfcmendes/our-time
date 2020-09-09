class Booking < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  validates :day, :hour, :price, :students_number, :speciality, presence: true
end
