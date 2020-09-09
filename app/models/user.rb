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

<<<<<<< HEAD
  def my_chatrooms
    if teacher.present?
      Chatroom.where(teacher_id: teacher.id)
    else
      chatrooms
    end
  end
=======
  validates :first_name, :last_name, :document, :phone_number, :address, presence: true

>>>>>>> 50ee774bc8745f35a5442126039550b4fef52ca1

end
