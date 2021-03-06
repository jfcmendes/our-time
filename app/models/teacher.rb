class Teacher < ApplicationRecord
  belongs_to :user
  has_many :teacher_availabilities

  has_one_attached :photo

  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  SPECIALITY = ["Yoga", "Meditation", "Sophrology"]
  validates :speciality, :description, :max_students, :price, :fee, :max_distance, presence: true
  # validates :speciality, inclusion: { in: SPECIALITY }

  validate :correct_speciality_types

  def average_rating
    reviews.average(:rating).to_f
  end

  private

  def correct_speciality_types
    if self.speciality.blank?
      errors.add(:speciality, "speciality is blank/invalid")
    elsif self.speciality.detect { |s| !(SPECIALITY.include? s) }
      errors.add(:speciality, "speciality is invalid")
    end
  end
end
