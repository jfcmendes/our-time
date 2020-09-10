class Booking < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  validates :day, :hour, :price, presence: true
end
