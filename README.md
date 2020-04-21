# Students in the Project
    
* Francisco Javier Jimenez Iglesias
* Nicolas Claus Apara Reineking

#Queries

#### 1 . Get all events created by certain user.   (user -> id = 2)
* Event.joins(:user).where(users: {id:2})
#### 2. Get all users belonging to an organization. (organization -> id = 1)
* User.joins(:organizations).where(organizations: {id:1}).map{|x| x.name}
#### 3. Get all public events in an organization.   (organization -> id = 1)
* Event.joins(user: :organizations).where(organizations: {id:1},public:true).map{|x| x.name}
#### 4. Get all private events in an organization.  (organization -> id = 1)
* Event.joins(user: :organizations).where(organizations: {id:1},public:false).map{|x| x.name}
#### 5. Get all guests that have been invited to a certain event. (event -> id = 1)
* User.joins(event_invitations: :event).where(events: {id:1}).map{|x| x.name}
#### 6. Get all guests that have voted for a date option in a certain event.  
* 
#### 7. Get all comments written by users on a specific event.     (event -> id = 2)
* Comment.joins(:event).where(events: {id:2}).map{|x| x.description}
#### 8. Get all comments written by a specific user on all events. (event -> id = 2),(user -> id = 2)
*  Comment.joins(:event,:user).where(events: {id:2},users: {id:2}).map{|x| x.description}
#### 9. Get all users with administrative privileges in an organization. (organization -> id = 1)
* User.joins(:organizations).where(organizations: {id:1},administrator:true).map{|x| x.name}
#### 10. Get all users with administrative privileges in the system.
* User.where(administrator:true).map{|x| x.name}
#### 11. Users should have a unique username and/or email address, so we will attempt to create two users with the same unique attribute.
there is the next validation on the user model:

* validates :name, uniqueness: {message: "Name already exists!!"}

the same goes to email
#### 12. E-mail addresses should be well-formed. We will attempt to try to update a model containing an ill-formatted email address.
there is the next validation on the user model:
*   validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
#### 13. Explain what should happen model-wise if an event is deleted and guests have already cast votes. Explain how your model layer is well-behaved in this scenario.
* if the event is deleted, all their comments, votes, assistance, reports, files are deleted too ad the event wont appear anymore to guests
#### 14. Explain what should happen model-wise if an organization is deleted and events have been already created within the organization. Explain how your model layer is well-behaved in this scenario.
* the following models will  be also deleted 
* VoteDate, DateOption(decrementing the number of votes per vote of the organization), Event (deleted if was owned be someone of them), EventFile (same as event), EventInvitation (decrementing the assistance), Report (of the created events),Comment (with their replies),Notification
#### 15. Explain what should happen model-wise if a user is deleted and the user has already created organizations, events and/or comments. Explain how your model layer is well-behaved in this scenario.
* If the user that is being deleted and he has created a comment, then those comments created by the user should be also deleted with all the replies to such comments.
* If the user that is being deleted and he has created a organization in which there are existing members, then the  role/rank of administrator of that organization should be transferred to the next member, if not, the organization shall be deleted too with all its files
* if the user that is being deleted and he has created events, if he had no organization (or was the only one there), the event are also deleted, else the ownership of the event passes to the administrator of the organization