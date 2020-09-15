class Booking < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  validates :day, :hour, :students_number, presence: true
  # validates :students_number, lenght: { maximum: Teacher.max_students }
  monetize :price_cents
end
