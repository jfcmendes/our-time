class TeacherAvailability < ApplicationRecord
  belongs_to :teacher

  validates :day, :start_time, :end_time, presence: true
end
