class Booking < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  has_one :review

  validates :day, :hour, :students_number, presence: true
  # validates :students_number, lenght: { maximum: Teacher.max_students }
end
