# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

biancaferreira = User.create!(first_name: 'Bianca', last_name: 'Ferreira', document: '123456789', phone_number: '00000000', 
                          address: 'Rua Retiro dos Artistas', email: 'biancaferreiralp@gmail.com', 
                          password: '123456');
