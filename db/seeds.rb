# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#USERS
u1 = User.create!(name:"Pedro Perez",email:"pperez@gmail.com",password:"pedro123",bio:"The old pedro",location:"San Carlos 123")
u2 = User.create!(name:"Chuck Norris",email:"Chuck@Norris.com",password:"NotNeeded",bio:"You really need it?",location:"space")
u2.administrator = u2
# Chuck Norris MUST be administrator
u3 = User.create!(name:"Bruce Lee",email:"LeeBrue@gmail.com",password:"Lee",bio:"Died for not being Chuck",location:"Earth's core")
u4 = User.create!(name:"Cuico",email:"ImTheCuico@money.cl",password:"PerroPapaPichangaPiscola",bio:"Sup Dogie, my father can buy us a piscola",location:"With the K")
u5 = User.create!(name:"Jotaro", email:"Jojo@miuandes.cl",password:"StarPlatinum",bio:"The Protagonist of the JOJO series", location:"Rome, Italy")

#EVENTS
e1 = Event.create!(name:"Code Challenge",start_date:DateTime.new(2020,06,13),description:"Coding for Homework at 6:00 AM",minVotes:2,public:TRUE)
e1.user = u2