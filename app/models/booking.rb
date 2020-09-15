class Booking < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  validates :day, :hour, :students_number, presence: true
end
