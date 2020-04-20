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

e2 = Event.create!(name:"Not violence, drink piscola 'perro'",description:"hey 'perro', violence is for nerds, now its time to piscola with white",minVotes:4,public:True, user:u4)

#EVENT FILES
ef11 = EventFile.create!(event:e1, file:"Computer.jpg",type:"Image")
ef11 = EventFile.create!(event:e1, file:"Conditions",type:"PDF")

ef21 = EventFile.create!(event:e2,file:"Mistral+Ginger.jgp",type:"image")

#EVENT INVITATIONS
ei1 = EventInvitation.create!(user:u3,event:e1)
ei2 = EventInvitation.create!(user:u2,event:e1)
ei3 = EventInvitation.create!(user:u4,event:e2)

#NOTIFICATIONS
n11 = Notification.create!(user:u2,notification:"the time for the event will be 2020-06-13",type_notification:"Creator Date Notification",file_included:"Google Calendar file")
n12 = Notification.create!(user:u2,notification:"the time for the event will be 2020-06-13",type_notification:"Assistant Date Notification",file_included:"Google Calendar file")

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

#REPORTS
r11 = Report.create!(user:u2,event:e2,motive:"The Piscola is with Black you moron")
r12 = Report.create!(user:u3,event:e2,motive:"This pink thinks piscola is with white... what a waste of pisco")

#COMMENT
# this is  an comment with a reply
c11 = Comment.create!(comment:"Bring it on Chuck",event:e1,user:u3)
c12 = Comment.create!(comment:"I'll win win this time",event:e1,user:u2)
c11.comments << c12  #C12 is the reply comment of c11

#this are comments separated
c21 = Comment.create!(comment:"This is a crime!",event:e2,user:u1)
c22 = Comment.create!(comment:"Why do you do this?",event:e2,user:u5)
c23 = Comment.create!(comment:"The Piscola is with Black you moron",event:e2,user:u2)
c24 = Comment.create!(comment:"what a waste of pisco",event:e2,user:u3)
c23.comments << c24 # this is a reply to a comment
c25 = Comment.create!(comment:"Wow, i agree with you!",event:e2,user:u2)
c24.comments << c25  # this is a reply of a replay of a comment... it is also a comment


