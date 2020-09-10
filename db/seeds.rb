# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Chatroom.destroy_all
Teacher.destroy_all
User.destroy_all
Booking.destroy_all

# USER SEED

biancaferreira = User.create!(first_name: 'Bianca', last_name: 'Ferreira', document: '123456789', phone_number: '00000000',
                address: 'Rua Retiro dos Artistas', email: 'biancaferreiralp@gmail.com', password: '123456');

joaofelipe = User.create!(email: "joaofelipemendes@gmail.com", password: "helloworld", first_name: "Joao Felipe",
             last_name: "Mendes", document: "01234567901", phone_number:"(21)", address: "Tijuca")

berenicemahe = User.create!(email: "berenice.mahe@gmail.com", password: "bonjour", first_name: "Bérénice",
             last_name: "Mahé", document: "01234567901", phone_number:"(21)", address: "Gloria")

alicecampos = User.create!(email: "alice.campos@gmail.com", password: "bonjour", first_name: "Alice",
             last_name: "Campos", document: "01234567901", phone_number:"(21)", address: "Botafogo")

brunabarbosa = User.create!(email: "bruna.barbosa@gmail.com", password: "bonjour", first_name: "Bruna",
             last_name: "Barbosa", document: "01234567901", phone_number:"(21)", address: "Leblon")

pedrodias = User.create!(email: "felipedias@gmail.com", password: "bonjour", first_name: "Felipe",
             last_name: "Dias", document: "01234567901", phone_number:"(21)", address: "Botafogo")

carmenmendes = User.create!(email: "carmenmendes@gmail.com", password: "bonjour", first_name: "Carmen",
             last_name: "Mendes", document: "01234567901", phone_number:"(21)", address: "Gloria")


# TEACHER SEED

bereniceteacher = Teacher.create!(user_id: berenicemahe.id, speciality: "Yoga", description: "yoga teacher", max_students: 4,
                  price: 50, fee: 5, max_distance: "10km")

biancateacher = Teacher.create!(user_id: biancaferreira.id, speciality: "Meditation", description: "meditation teacher", max_students: 12,
                  price: 70, fee: 5, max_distance: "10km")

pedrodias = Teacher.create!(user_id: pedrodias.id, speciality: "Yoga", description: "meditation teacher", max_students: 6,
                  price: 40, fee: 10, max_distance: "5km")

brunabarbosa = Teacher.create!(user_id: brunabarbosa.id, speciality: "Yoga", description: "Professional yoga teacher", max_students: 15,
                  price: 80, fee: 0, max_distance: "5km")


# CHATROOM SEED

chatroomone = Chatroom.create!(user_id: joaofelipe.id, teacher_id: bereniceteacher.id)

chatroomtwo = Chatroom.create!(user_id: joaofelipe.id, teacher_id: biancateacher.id)


# BOOKING SEED

bookingone = Booking.create!(user_id: joaofelipe.id, teacher_id: bereniceteacher.id, day: "23rd September 2020", hour: "13h00", price: "75")

bookingtwo = Booking.create!(user_id: joaofelipe.id, teacher_id: biancateacher.id, day: "30 September 2020", hour: "14h00", price: "65")
