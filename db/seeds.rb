# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create!(name:"Pedro Perez",email:"pperez@gmail.com",password:"pedro123",bio:"The old pedro",location:"San Carlos 123")
u2 = User.create!(name:"Chuck Norris",email:"Chuck@Norris.com",password:"NotNeeded",bio:"You really need it?",location:"space")
u2.administrator = u2
# Chuck Norris MUST be administrator
u3 = User.create!(name:"Bruce Lee",email:"LeeBrue@gmail.com",password:"Lee",bio:"Died for not being Chuck",location:"Earth's core")
