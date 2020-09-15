class Booking < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  validates :date, presence: true
end
