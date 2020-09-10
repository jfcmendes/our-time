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

# USER SEED

biancaferreira = User.create!(first_name: 'Bianca', last_name: 'Ferreira', document: '123456789', phone_number: '00000000', 
                          address: 'Rua Retiro dos Artistas', email: 'biancaferreiralp@gmail.com', 
                          password: '123456', gender: "Female");

joaofelipe = User.create!(email: "joaofelipemendes@gmail.com", password: "helloworld", first_name: "Joao Felipe",
             last_name: "Mendes", document: "01234567901", phone_number:"(21)", address: "Botafogo", gender: "Male")

berenicemahe = User.create!(email: "berenice.mahe@gmail.com", password: "bonjour", first_name: "Bérénice",
             last_name: "Mahé", document: "01234567901", phone_number:"(21)", address: "Gloria", gender: "Female")


# TEACHER SEED

bereniceteacher = Teacher.create!(user_id: berenicemahe.id, speciality: ["Yoga"], description: "yoga teacher", max_students: 4,
                  price: 50, fee: 5, max_distance: "10km")
biancateacher = Teacher.create!(user_id: biancaferreira.id, speciality: ["Yoga"], description: "yoga teacher", max_students: 4,
                  price: 50, fee: 5, max_distance: "10km")


# CHATROOM SEED
chatroomone = Chatroom.create!(user_id: joaofelipe.id, teacher_id: bereniceteacher.id)
chatroomtwo = Chatroom.create!(user_id: joaofelipe.id, teacher_id: biancateacher.id)

# MESSAGE SEED
