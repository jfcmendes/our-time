class Teacher < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one_attached :photo

  SPECIALITY = ["Yoga", "Meditation", "Sophrology"]
  validates :speciality, :description, :max_students, :price, :fee, :max_distance, presence: true
  # validates :speciality, inclusion: { in: SPECIALITY }

  validate :correct_speciality_types

  private

  def correct_speciality_types
    if self.speciality.blank?
      errors.add(:speciality, "speciality is blank/invalid")
    elsif self.speciality.detect { |s| !(SPECIALITY.include? s) }
      errors.add(:speciality, "speciality is invalid")
    end
  end
end
