# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

# USER SEED

biancaferreira = User.create!(first_name: 'Bianca', last_name: 'Ferreira', document: '123456789', phone_number: '00000000',
                address: 'Rua Retiro dos Artistas', email: 'biancaferreiralp@gmail.com', password: '123456', gender: "Female");
                url = 'https://images.unsplash.com/photo-1540206063137-4a88ca974d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
                filename = File.basename(URI.parse(url).path)
                file = URI.open(url)
                biancaferreira.photo.attach(io: file, filename: filename)
                biancaferreira.save!

joaofelipe = User.create!(email: "joaofelipemendes@gmail.com", password: "helloworld", first_name: "Joao Felipe",
             last_name: "Mendes", document: "01234567901", phone_number:"(21)", address: "Tijuca", gender: "Male")
              url = 'https://images.unsplash.com/photo-1586035758264-c5c685f55e9c?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
              filename = File.basename(URI.parse(url).path)
              file = URI.open(url)
              joaofelipe.photo.attach(io: file, filename: filename)
              joaofelipe.save!

berenicemahe = User.create!(email: "berenice.mahe@gmail.com", password: "bonjour", first_name: "Bérénice",
             last_name: "Mahé", document: "01234567901", phone_number:"(21)", address: "Gloria", gender: "Female")
            url = 'https://images.unsplash.com/photo-1540206063137-4a88ca974d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
            filename = File.basename(URI.parse(url).path)
            file = URI.open(url)
            berenicemahe.photo.attach(io: file, filename: filename)
            berenicemahe.save!

alicecampos = User.create!(email: "alice.campos@gmail.com", password: "bonjour", first_name: "Alice",
             last_name: "Campos", document: "01234567901", phone_number:"(21)", address: "Botafogo", gender: "Female")
            url = 'https://images.unsplash.com/photo-1540206063137-4a88ca974d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
            filename = File.basename(URI.parse(url).path)
            file = URI.open(url)
            alicecampos.photo.attach(io: file, filename: filename)
            alicecampos.save!

saraahbikai = User.create!(email: "saraah.bikai@gmail.com", password: "bonjour", first_name: "Saraah",
             last_name: "Bikaï", document: "01234567901", phone_number:"(21)", address: "Leblon", gender: "Female")
              url = 'https://images.unsplash.com/photo-1554965863-e1576e9340c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
              filename = File.basename(URI.parse(url).path)
              file = URI.open(url)
              saraahbikai.photo.attach(io: file, filename: filename)
              saraahbikai.save!

pedrodias = User.create!(email: "pedrodias@gmail.com", password: "bonjour", first_name: "Felipe",
             last_name: "Dias", document: "01234567901", phone_number:"(21)", address: "Botafogo", gender: "Male")
            url = 'https://images.unsplash.com/photo-1540206063137-4a88ca974d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
            filename = File.basename(URI.parse(url).path)
            file = URI.open(url)
            pedrodias.photo.attach(io: file, filename: filename)
            pedrodias.save!

carmenmendes = User.create!(email: "carmenmendes@gmail.com", password: "bonjour", first_name: "Carmen",
             last_name: "Mendes", document: "01234567901", phone_number:"(21)", address: "Gloria", gender: "Female")
            url = 'https://images.unsplash.com/photo-1540206063137-4a88ca974d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
            filename = File.basename(URI.parse(url).path)
            file = URI.open(url)
            carmenmendes.photo.attach(io: file, filename: filename)
            carmenmendes.save!

louiseboutin = User.create!(email: "louiseboutin@gmail.com", password: "bonjour", first_name: "Louise",
             last_name: "Boutin", document: "01234567901", phone_number:"(21)", address: "Gloria", gender: "Female")
            url = 'https://images.unsplash.com/photo-1573583804458-d4f9be45fd84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'
            filename = File.basename(URI.parse(url).path)
            file = URI.open(url)
            louiseboutin.photo.attach(io: file, filename: filename)
            louiseboutin.save!


# TEACHER SEED

louiseteacher = Teacher.create!(user_id: louiseboutin.id, speciality: ["Yoga"], description: "Hello everyone, it's Louise. I teach dynamic yoga, they include postures and breathing exercises. It will help you to improve body posture and reduce back pain as I am specialize in the wellness of the muscles. After having crossed India to discover Yoga, I am now in Brazil ", max_students: 4,
                  price: 50, fee: 5, max_distance: "10km", diploma: "Master Degree of Sport specialized in the wellness of muscle at La Sorbonne, Paris, France",
                  additional_informations: "I can teach in French, English and Portuguese")
                url = 'https://images.unsplash.com/photo-1573583804458-d4f9be45fd84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'
                filename = File.basename(URI.parse(url).path)
                file = URI.open(url)
                louiseteacher.photo.attach(io: file, filename: filename)
                louiseteacher.save!

biancateacher = Teacher.create!(user_id: biancaferreira.id, speciality: ["Yoga"], description: "After studying yoga in Bali and teaching in several studios across Europe and Costa Rica for 6 years, I am back in my hometown, ready to to share my knowledge with the carioca people.", max_students: 12,
                  price: 70, fee: 5, max_distance: "10km", diploma: "Bali retreat studio diploma",
                  additional_informations: "I can teach in both Portuguese and English. The yoga I teach, is a really calm type of Yoga")
                url = 'https://images.unsplash.com/photo-1540206063137-4a88ca974d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
                filename = File.basename(URI.parse(url).path)
                file = URI.open(url)
                biancateacher.photo.attach(io: file, filename: filename)
                biancateacher.save!

joaoteacher = Teacher.create!(user_id: joaofelipe.id, speciality: ["Yoga"], description: "I started my journey around yoga learning massoterapia at IPSB - Institute of Psycho-Structural Balancing (Los Angeles) and then I did the a yoga teaching retreat at Jardim de Aromas (Vale do Matutu) to end up as a teacher at the Shiva Studio (Búzios). I will be happy to teach you my passion!", max_students: 6,
                  price: 40, fee: 10, max_distance: "5km", diploma: "massoterapia at IPSB school of Los Angeles, and Jardim de Aromas yoga retreat (Vale do Matutu) Brazil. ",
                  additional_informations: "I teach only in Portuguese. I can adapt to beginners as well as professionals.")
                url = 'https://images.unsplash.com/photo-1586035758264-c5c685f55e9c?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
                filename = File.basename(URI.parse(url).path)
                file = URI.open(url)
                joaoteacher.photo.attach(io: file, filename: filename)
                joaoteacher.save!

saraahteacher = Teacher.create!(user_id: saraahbikai.id, speciality: ["Yoga"], description: "Hello! My name is Saraah, and I am teaching a kind of yoga which is really calm, to raise body consciousness and create a symbioze inside you. I will orient you through this journey with some classic mantra. This yoga helps you a lot for posture and back pain.", max_students: 15,
                  price: 80, fee: 0, max_distance: "5km", diploma: "Official Yoga School of Rio de Janeiro",
                  additional_informations: "I am here to share my love for yoga in English, French or Portuguese.")
                url = 'https://images.unsplash.com/photo-1554965863-e1576e9340c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
                filename = File.basename(URI.parse(url).path)
                file = URI.open(url)
                saraahteacher.photo.attach(io: file, filename: filename)
                saraahteacher.save!

carmenteacher = Teacher.create!(user_id: carmenmendes.id, speciality: ["Yoga"], description: "Oi! I am Carmen, I am a passionate yoga teacher since over 15 years, it helped be to raise body consciousness and create a symbioze inside myself. I hope you will enjoy having me around to teach you.", max_students: 15,
                  price: 50, fee: 10, max_distance: "5km", diploma: "Official Yoga School of Rio de Janeiro",
                  additional_informations: "I am here to share my love for yoga in English, French or Portuguese.")
                url = 'https://images.unsplash.com/photo-1575052814086-f385e2e2ad1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
                filename = File.basename(URI.parse(url).path)
                file = URI.open(url)
                carmenteacher.photo.attach(io: file, filename: filename)
                carmenteacher.save!

# CHATROOM SEED

chatroomone = Chatroom.create!(user_id: berenicemahe.id, teacher_id: louiseteacher.id)

chatroomtwo = Chatroom.create!(user_id: berenicemahe.id, teacher_id: saraahteacher.id)

chatroomthree = Chatroom.create!(user_id: berenicemahe.id, teacher_id: carmenteacher.id)

# BOOKING SEED

bookingone = Booking.create!(user_id: berenicemahe.id, teacher_id: louiseteacher.id, day: "23-09-2020", hour: "13:00", price: "75", students_number: 6)

bookingtwo = Booking.create!(user_id: berenicemahe.id, teacher_id: saraahteacher.id, day: "16-09-2020", hour: "14:00", price: "85", students_number: 4)

bookingtwo = Booking.create!(user_id: berenicemahe.id, teacher_id: carmenteacher.id, day: "09-09-2020", hour: "14:00", price: "100", students_number: 6)


# MESSAGE SEED

messagefrombookingone = Message.create!(chatroom_id: chatroomone.id, user_id: berenicemahe.id, content: "Hello, I am the teacher for your class of next week, have you got some question about anything?")


# REVIEW SEED

reviewone = Review.create!(booking_id: bookingone.id, user_id: berenicemahe.id, rating: 5, content: "Louise has been a wonderful teacher, and helped each of us with care. I recommand her as your teacher!")

reviewtwo = Review.create!(booking_id: bookingtwo.id, user_id: berenicemahe.id, rating: 4, content: "Saraah is a great, careful and lovely teacher. Her class was really adapted for beginners and she cared about each of us. I will certainly ask her service again")
