class Teacher < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :speciality, :description, :max_students, :price, :fee, :max_distance, presence: true

  SPECIALITY = ["Yoga", "Meditation", "Sophrology"]
end
