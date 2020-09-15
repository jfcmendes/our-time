# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Chatroom.destroy_all
Teacher.destroy_all
User.destroy_all

# USER SEED


biancaferreira = User.create!(first_name: 'Bianca', last_name: 'Ferreira', document: '123456789', phone_number: '00000000',
                address: 'Rua Retiro dos Artistas', email: 'biancaferreiralp@gmail.com', password: '123456', gender: "Female");

joaofelipe = User.create!(email: "joaofelipemendes@gmail.com", password: "helloworld", first_name: "Joao Felipe",
             last_name: "Mendes", document: "01234567901", phone_number:"(21)", address: "Tijuca", gender: "Male")

berenicemahe = User.create!(email: "berenice.mahe@gmail.com", password: "bonjour", first_name: "Bérénice",
             last_name: "Mahé", document: "01234567901", phone_number:"(21)", address: "Gloria", gender: "Female")

alicecampos = User.create!(email: "alice.campos@gmail.com", password: "bonjour", first_name: "Alice",
             last_name: "Campos", document: "01234567901", phone_number:"(21)", address: "Botafogo", gender: "Female")

brunabarbosa = User.create!(email: "bruna.barbosa@gmail.com", password: "bonjour", first_name: "Bruna",
             last_name: "Barbosa", document: "01234567901", phone_number:"(21)", address: "Leblon", gender: "Female")

pedrodias = User.create!(email: "felipedias@gmail.com", password: "bonjour", first_name: "Felipe",
             last_name: "Dias", document: "01234567901", phone_number:"(21)", address: "Botafogo", gender: "Male")

carmenmendes = User.create!(email: "carmenmendes@gmail.com", password: "bonjour", first_name: "Carmen",
             last_name: "Mendes", document: "01234567901", phone_number:"(21)", address: "Gloria", gender: "Female")


# TEACHER SEED

bereniceteacher = Teacher.create!(user_id: berenicemahe.id, speciality: ["Yoga"], description: "After have been studying yoga in Bali and teaching in several studios accross Europe and Costa Rica, I am back to my hometown, to share it with carioca people.", max_students: 4,
                  price: 50, fee: 5, max_distance: "10km", diploma: "master of sport")

biancateacher = Teacher.create!(user_id: biancaferreira.id, speciality: ["Meditation", "Yoga"], description: "After have been studying meditation in Bali and teaching in several studios accross Europe and Costa Rica, I am back to my hometown, to share it with carioca people.", max_students: 12,
                  price: 70, fee: 5, max_distance: "10km", diploma: "bali studio diploma")

pedrodias = Teacher.create!(user_id: pedrodias.id, speciality: ["Yoga"], description: "After have been studying yoga in Bali and teaching in several studios accross Europe and Costa Rica, I am back to my hometown, to share it with carioca people.", max_students: 6,
                  price: 40, fee: 10, max_distance: "5km", diploma: "costa rica diploma")

brunabarbosa = Teacher.create!(user_id: brunabarbosa.id, speciality: ["Yoga"], description: "After have been studying yoga in Bali and teaching in several studios accross Europe and Costa Rica, I am back to my hometown, to share it with carioca people.", max_students: 15,
                  price: 80, fee: 0, max_distance: "5km", diploma: "official studio of Rio de Janeiro")


# CHATROOM SEED

chatroomone = Chatroom.create!(user_id: joaofelipe.id, teacher_id: bereniceteacher.id)

chatroomtwo = Chatroom.create!(user_id: joaofelipe.id, teacher_id: biancateacher.id)


# BOOKING SEED

bookingone = Booking.create!(user_id: joaofelipe.id, teacher_id: bereniceteacher.id, date: "23-09-2020 13:00", price: "75")

bookingtwo = Booking.create!(user_id: joaofelipe.id, teacher_id: biancateacher.id, date: "24-09-2020 14:00", price: "65")


# MESSAGE SEED

messagefrombookingone = Message.create!(chatroom_id: chatroomone.id, user_id: berenicemahe.id, content: "Hello, I am the teacher for your class of next week, have you got some question about anything?")


# REVIEW SEED

reviewone = Review.create!(booking_id: bookingone.id, user_id: joaofelipe.id, rating: "5", content: "Bérénice has been a wonderful teacher, and helped each of us with care. I recommand her as your teacher!")

