class Booking < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  validates :date, :students, presence: true
end
