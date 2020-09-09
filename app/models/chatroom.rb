class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :teacher

  has_many :messages
end
