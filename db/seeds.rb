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
u1 = User.create!(name:"Pedro Perez",email:"pperez@gmail.com",password:"pedro123",bio:"The old pedro",location:"San Carlos 123",administrator:false)
u2 = User.create!(name:"Chuck Norris",email:"Chuck@Norris.com",password:"NotNeeded",bio:"You really need it?",location:"space",administrator:true) # Chuck Norris MUST be administrator
u3 = User.create!(name:"Bruce Lee",email:"LeeBruce@gmail.com",password:"LeeBruce",bio:"Died for not being Chuck",location:"Earth's core",administrator:true)
u4 = User.create!(name:"Cuico",email:"ImTheCuico@money.cl",password:"PerroPapaPichangaPiscola",bio:"Sup Dogie, my father can buy us a piscola",location:"With the K",administrator:false)
u5 = User.create!(name:"Jotaro", email:"Jojo@miuandes.cl",password:"StarPlatinum",bio:"The Protagonist of the JOJO series", location:"Rome, Italy",administrator:false)

#ORGANIZATIONS
o1 = Organization.create!(name:"Chuck Norris Facts")
o2 = Organization.create!(name:"Bruce Lee: school of martial arts")

#ORGANIZATION FILES
of1 = OrganizationFile.create!(file: "Chuck Norris beats Godzilla",organization:o1)
of2 = OrganizationFile.create!(file: "Bruce Lee beats Chuck Norris",organization:o2)

#SUBSCRIPTIONS
s1 = Subscription.create!(rank:"Leader",user:u2,organization:o1)
s2 = Subscription.create!(rank:"Leader",user:u3,organization:o2)
s3 = Subscription.create!(rank:"follower",user:u1,organization:o1)
s4 = Subscription.create!(rank:"follower",user:u5,organization:o1)


#EVENTS
e1 = Event.create!(name:"Code Challenge", start_date:"05/10/2021", description:"Coding for Homework at 6:00 AM",minVotes:2,public:true, user:u2)

e2 = Event.create!(name:"Not violence, drink piscola 'perro'", start_date:"05/10/2021", description:"hey 'perro', violence is for nerds, now its time to piscola with white",minVotes:4,public:true, user:u4)
e3 = Event.create!(name:"Norris Cup", start_date:"05/10/2021",description:"How get near the Chuck level)",minVotes:3, public:true, user:u2, organization:o1)

#EVENT FILES
ef11 = EventFile.create!(event:e1, file:"Computer.jpg")
ef11 = EventFile.create!(event:e1, file:"Conditions")

ef21 = EventFile.create!(event:e2,file:"Mistral+Ginger.jpg")

#EVENT INVITATIONS
ei1 = EventInvitation.create!(user:u3,event:e1)
ei2 = EventInvitation.create!(user:u2,event:e1)
ei3 = EventInvitation.create!(user:u4,event:e2)
ei4 = EventInvitation.create!(user:u4,event:e1)
ei5 = EventInvitation.create!(user:u1,event:e1)

#NOTIFICATIONS
n11 = Notification.create!(event:e1,note:"the time for the event will be 2020-06-13",file:"Creator Date Notification")
n12 = Notification.create!(event:e1,note:"the time for the event will be 2020-06-13",file:"Assistant Date Notification")

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
r12 = Report.create!(user:u3,event:e2,motive:"This punk thinks piscola is with white... what a waste of pisco")

#COMMENT
# this is  an comment with a reply
c11 = Comment.create!(description:"Bring it on Chuck",event:e1,user:u3)
c12 = Comment.create!(description:"I'll win win this time",event:e1,user:u2)
c11.comments << c12  #C12 is the reply comment of c11
#this are comments separated
c21 = Comment.create!(description:"This is a crime!",event:e2,user:u1)
c22 = Comment.create!(description:"Why do you do this?",event:e2,user:u5)  # line 80 and 81 are separated comments
c23 = Comment.create!(description:"The Piscola is with Black you moron",event:e2,user:u2)
c24 = Comment.create!(description:"what a waste of pisco",event:e2,user:u3)
c23.comments << c24 # this is a reply to a comment
c25 = Comment.create!(description:"Wow, i agree with you!",event:e2,user:u2)
c24.comments << c25  # this is a reply of a replay of a comment... it is also a comment

#MAILBOX
mb1 = MailBox.create!(user:u1)
mb2 = MailBox.create!(user:u2)
mb3 = MailBox.create!(user:u3)
mb4 = MailBox.create!(user:u4)
mb5 = MailBox.create!(user:u5)

ib1 = InboxMessage.create!(mail_box:mb2,message:"1v1 in the Code Challenge")
ib2 = InboxMessage.create!(mail_box:mb3,message:"It´s on!")
ib3 = InboxMessage.create!(mail_box:mb1,message:"WOOOOW")