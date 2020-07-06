# Students in the Project
    
* Francisco Javier Jimenez Iglesias
* Nicolas Claus Apara Reineking

# Presentation 

### • Summary of implemented features.

    1. System Access
        (a) Log in with email address.
        (c) Log out.
    2. Registration
        (a) User registration.
        (b) Change password.
        (c) Password recovery.
    3. User Administration
        (a) New user.
        (c) Edit User.
            i. Change password.
        (d) Delete user.
    4. System Administration
        (a) Perform CRUD operations on Users.
        (b) Perform CRUD operations on Organizations.
        (c) Perform CRUD operations on Events.
    5. User Profile
        (a) View user profile.
        (b) Edit user profile.
            i. Edit user fields: name, bio, location.
        (c) View events to which the user has been invited.
        (d) View created events.
    6. Organization
        • View organization page.
        • Manage organization page.
        • See public events.
    7. Mailbox
        • See inbox.
        • View incoming message.
        • Compose message to user.
    8. Events
        (a) View event
            i. View title, description, location, and creation date.
            ii. View images.
        (f) Delete event.
        (g) Edit event.
        (h) Add comment.
        (i) View comments.
        (j) Report event as inappropriate.
    10. Search
        (a) Search user (name or username).
        (b) Search organization.
        (c) Search event by substring in title / description.
        (d) Search event by creator.
        (e) Search event by organization.
        
        
### •bugs 


    2. Registration
        (b) Change password. -> Only to my own account, admin can´t change it
    3. User Administration
        (c) Edit User.
            i. Change password. --> Only to my own account, admin can´t change it 
    4. System Administration
        (d) Perform CRUD operations on Event comments.       
    7. Mailbox
        • Compose message to user. --> 
    8. Events
        (a) View event
            iii. View file attachments.
        (e) Invite guests.
                
### •Pending features

    1. System Access
        (b) Log in with Google authentication.
    2. Registration
        (c) Password recovery.
    3. User Administration
            (b) View user details.
                i. Last access.
                ii. User role.
    6. Organization
        • See public events.
    8. Events
            (a) View event
                iv. View videos.
            (b) Start event date vote.
            (c) Configure event date vote.
            (d) Vote for event date.
            (e) Invite guests.
            (j) Report event as inappropriate.
    9. Acceptable Use Policy (AUP) and Terms of Service (ToS).
            (a) Provide AUP and ToS documents.
            (b) Report abusive content.
        
# Project 4

### • Summary of implemented features.

    • System Access
        • Log in with email address
        • Log out
        
    • Registration
        • User Registration
        • Change password
        
    • User Administration
        • New User
        • Edit User
        • Change Password
        • Delete User
        
    • System Administration
        • Perform CRUD operations on Users.
        • Perform CRUD operations on Organizations.
        • Perform CRUD operations on Events.
        
    • User Profile
       • View user profile.
       • Edit user profile.
       • Edit user fields: name, bio, location.
        • View events to which the user has been invited.
        • View created events
        
    • Organization
        • View organization page.
        • Manage organization page.
        
    • Mailbox
        • See inbox.
        • View incoming message.
        
    • Events
        • View event
            • View title, description, location, and creation date.
            • View images.
        • Delete event.
        • Edit event.
    
    • Search
        • Search user (name or username).
        • Search organization.
        • Search event by substring in title / description.
        • Search event by creator.
        • Search event by organization.
        
### •bugs 

    • Registration
        • For password recovery , you enter the page, and ask for it, but it doesn't send the email to recover the password
    
    • User Administration
        • User Role exist, but is not viewable 
        
    • Mailbox
        • Compose message to user.    
    
    • Events
            • View event
                • View file attachments. shows N/A
                • View videos.
            • Invite guests.
    
    • Search
        • Search event shows repeated events
            
### •Pending features

    • System Access
        • Log in with Google and Device at the same time
        
    • User Administration
        • Last acces 
        
    • System Administration
            • Perform CRUD operations on Event comments.
            
    • Organization
             • See public events.
             
    • Events
            • Start event date vote.
            • Configure event date vote.      
            • Vote for event date.
            • Add comment.
            • View comments.
            • Report event as inappropriate.   
    
    • Acceptable Use Policy (AUP) and Terms of Service (ToS).
        • Provide AUP and ToS documents.
        •Report abusive content.
             
# Project 3

### • Summary of implemented features.

    • System is working as admin by default
    • The CRUD operations are avaiable in Organization and Events
    • Users/Profiles operation avaialable. You can view,
        create, delete and edit users/profiles. Including
        name, bio , location, password.
    • View events that user created is available
    • Organization page available, as also the ability to edit it and delete each one of them.
    • Events can be viewed including 
        - title, description, location, date
        - Event flyer
    • Events have operations for create, edit, destroy working
    • Search bar partially implemented
        -It is possible to type events,users,organizations to redirect you into the respective page
        -it can search also as events/1 to show event with id 1
        
### •bugs 

    • Search bar input may cause page malfunctioning
        -Routing errors if the input is different than:
            -users/1 
            -events/1 
            -organizations/1 
            -events
            -users
            -organizations
        - the "1" mentioned above is searching by id on any of the categories
    • You can't reply and view comments in events becouse they ask for a user and event that isn't taking
    • In edit (of any kind) you can't see the photos, but they're visible once you upload the changes
    
    
### •Pending features

    • The CRUD operations are not woring on Events comments, due to not being selected a User
    • In User, view invited evets
    • Vote date for events
    • public events for organization, for now, all the events are public
    • Search events by substring title, creator(if searching by id is not considered),
        by organization.
    • In Events, there is no more attachments than the flyer, so no attachments and no videos
    • Vote date for Events
    • You can configurate the date manually, but no in base of votes
    • Vote configuration
    • Invite guests to events
    

# Project 2 

### •   Summary of implemented features.

We have implemented:

    • Bootstrap
    • The css y scss files (with comments in it to guide us) 
    • The application.html ( with its header, nav and footer)
    • A homepage witch haves top 5 events (in our case, we have 3 events, so it shows them all)
        -   it haves a link to see the comments of the replies
    • In banner, we implemented links to:
        -   The users on the app
        -   All the events that are in the history of the event
        -   The Organizations
    • API v1 for JSON resources
    • We have instance to create Events and Users, but no one is implemented as the assigment asked to be read Only
     
    
### •   Summary of features required in the assignment but pending.

    • The comments of the events have their replies, but they appears as a reference to the comment they are replying to
       in the column "replying to" referencing to the column "N"
    • Forbidden access, all is seem as an administrator

### • API Tests, which should include links to your Postman collection containing tests for your APIs.

Postman Link

   https://www.getpostman.com/collections/f90b3e4668efd6bdf015

# Project 1.2

## Notes
 To have a clean database, please do the following:
 
 * rake db:drop
 * rake db:create
 * rake db:migrate
 * rake db:seed

## Queries 

### You can use the line command:  rake db:model_queries, they are all done there

##### 1 . Get all events created by certain user.   (user -> id = 2)
* Event.joins(:user).where(users: {id:2})
##### 2. Get all users belonging to an organization. (organization -> id = 1)
* User.joins(:organizations).where(organizations: {id:1}).map{|x| x.name}
##### 3. Get all public events in an organization.   (organization -> id = 1)
* Event.joins(user: :organizations).where(organizations: {id:1},public:true).map{|x| x.name}
##### 4. Get all private events in an organization.  (organization -> id = 1)
* Event.joins(user: :organizations).where(organizations: {id:1},public:false).map{|x| x.name}
##### 5. Get all guests that have been invited to a certain event. (event -> id = 1)
* User.joins(event_invitations: :event).where(events: {id:1}).map{|x| x.name}
##### 6. Get all guests that have voted for a date option in a certain event.  (event -> id = 1), it passes though VoteDate to know the ones who voted
*  User.joins(event_invitations: {vote_date: {date_option: :event}}).where(events: {id:1}).map{|x| x.name}
##### 7. Get all comments written by users on a specific event.     (event -> id = 2)
* Comment.joins(:event).where(events: {id:2}).map{|x| x.description}
##### 8. Get all comments written by a specific user on all events. (event -> id = 2),(user -> id = 2)
*  Comment.joins(:event,:user).where(events: {id:2},users: {id:2}).map{|x| x.description}
##### 9. Get all users with administrative privileges in an organization. (organization -> id = 1)
* User.joins(:organizations).where(organizations: {id:1},administrator:true).map{|x| x.name}
##### 10. Get all users with administrative privileges in the system.
* User.where(administrator:true).map{|x| x.name}
##### 11. Users should have a unique username and/or email address, so we will attempt to create two users with the same unique attribute.
there is the next validation on the user model:

* validates :name, uniqueness: {message: "Name already exists!!"}

the same goes to email
##### 12. E-mail addresses should be well-formed. We will attempt to try to update a model containing an ill-formatted email address.
there is the next validation on the user model:
*   validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
##### 13. Explain what should happen model-wise if an event is deleted and guests have already cast votes. Explain how your model layer is well-behaved in this scenario.
* if the event is deleted, all their comments, votes, assistance, reports, files are deleted too ad the event wont appear anymore to guests
##### 14. Explain what should happen model-wise if an organization is deleted and events have been already created within the organization. Explain how your model layer is well-behaved in this scenario.
* the following models will  be also deleted 
* VoteDate, DateOption(decrementing the number of votes per vote of the organization), Event (deleted if was owned be someone of them), EventFile (same as event), EventInvitation (decrementing the assistance), Report (of the created events),Comment (with their replies),Notification
##### 15. Explain what should happen model-wise if a user is deleted and the user has already created organizations, events and/or comments. Explain how your model layer is well-behaved in this scenario.
* If the user that is being deleted and he has created a comment, then those comments created by the user should be also deleted with all the replies to such comments.
* If the user that is being deleted and he has created a organization in which there are existing members, then the  role/rank of administrator of that organization should be transferred to the next member, if not, the organization shall be deleted too with all its files
* if the user that is being deleted and he has created events, if he had no organization (or was the only one there), the event are also deleted, else the ownership of the event passes to the administrator of the organization