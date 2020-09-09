class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :rating, :content
end
