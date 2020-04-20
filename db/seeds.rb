# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#USERS
u1 = User.create!(name:"Pedro Perez",email:"pperez@gmail.com",password:"pedro123",bio:"The old pedro",location:"San Carlos 123",administrator:FALSE)
u2 = User.create!(name:"Chuck Norris",email:"Chuck@Norris.com",password:"NotNeeded",bio:"You really need it?",location:"space",administrator:TRUE) # Chuck Norris MUST be administrator
u3 = User.create!(name:"Bruce Lee",email:"LeeBrue@gmail.com",password:"Lee",bio:"Died for not being Chuck",location:"Earth's core",administrator:TRUE)
u4 = User.create!(name:"Cuico",email:"ImTheCuico@money.cl",password:"PerroPapaPichangaPiscola",bio:"Sup Dogie, my father can buy us a piscola",location:"With the K",administrator:FALSE)
u5 = User.create!(name:"Jotaro", email:"Jojo@miuandes.cl",password:"StarPlatinum",bio:"The Protagonist of the JOJO series", location:"Rome, Italy",administrator:FALSE)

#ORGANIZATIONS
o1 = Organization.create!(name:"Chuck Norris Facts")
o2 = Organization.create!(name:"Bruce Lee: school of martial arts")

#ORGANIZATION FILES
of1 = OrganizationFile.create!(file: "Chuck Norris beats Godzilla",type:"Video",organization:o1)
of2 = OrganizationFile.create!(file: "Bruce Lee beats Chuck Norris",type:"Video",organization:o2)

#SUBSCRIPTIONS
s1 = Subscription.create!(rank:"Leader",user:u2,organization:o1)
s2 = Subscription.create!(rank:"Leader",user:u3,organization:o2)

#EVENTS
e1 = Event.create!(name:"Code Challenge",description:"Coding for Homework at 6:00 AM",minVotes:2,public:TRUE, user:u2)

e2 = Event.create!(name:"Not violence, drink piscola 'perro'",description:"hey 'perro', violence is for nerds, now its time to piscola",minVotes:4,public:True, user:u4)

#EVENT INVITATIONS
ei1 = EventInvitation.create!(user:u3,event:e1)
ei2 = EventInvitation.create!(user:u2,event:e1)
ei3 = EventInvitation.create!(user:u4,event:e2)

#DATE OPTIONS
do11 = DateOption.create!(event:e1,desired_date:DateTime.new(2020,06,13))
do12 = DateOption.create!(event:e1,desired_date:DateTime.new(2020,06,07))
do13 = DateOption.create!(event:e1,desired_date:DateTime.new(2020,04,30))

do21 = DateOption.create!(event:e2,desired_date:DateTime.new(2020,04,25))
do21 = DateOption.create!(event:e2,desired_date:DateTime.new(2020,04,24))
do21 = DateOption.create!(event:e2,desired_date:DateTime.new(2020,04,23))


#VOTE DATE
vd11 = VoteDate.create!(event_invitation:ei1,date_option:do11)
vd11 = VoteDate.create!(event_invitation:ei2,date_option:do12)

vd21 = VoteDate.create!(event_invitation:ei3,date_option:do21)

