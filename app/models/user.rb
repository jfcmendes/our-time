class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :reviews
  has_many :chatrooms
  has_many :messages
  has_one :teacher
  
  GENDER = ["Female", "Male"]

  validates :first_name, :last_name, :document, :phone_number, :address, :gender, presence: true
  validates :gender, inclusion: { in: GENDER }

  def my_chatrooms
    if teacher.present?
      Chatroom.where(teacher_id: teacher.id)
    else
      chatrooms
    end
  end
end
