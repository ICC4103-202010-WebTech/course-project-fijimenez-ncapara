# Students in the Project
    
* Francisco Javier Jimenez Iglesias
* Nicolas Claus Apara Reineking

#Queries

#### 1 . Get all events created by certain user.   (user -> id=2)
* Event.joins(:user).where(users: {id:2})
#### 2. Get all users belonging to an organization.
* User.joins(:organizations).where(organizations: {id:1}).map{|x| x.name}
#### 3. Get all public events in an organization.
* 
#### 4. Get all private events in an organization.
* 
#### 5. Get all guests that have been invited to a certain event.
* 
#### 6. Get all guests that have voted for a date option in a certain event.
#### 7. Get all comments written by users on a specific event.
#### 8. Get all comments written by a specific user on all events.
#### 9. Get all users with administrative privileges in an organization.
#### 10. Get all users with administrative privileges in the system.
#### 11. Users should have a unique username and/or email address, so we will attempt to create two users with the same unique attribute.
#### 12. E-mail addresses should be well-formed. We will attempt to try to update a model containing an ill-formatted email address.
#### 13. Explain what should happen model-wise if an event is deleted and guests have already cast votes. Explain how your model layer is well-behaved in this scenario.
#### 14. Explain what should happen model-wise if an organization is deleted and events have been already created within the organization. Explain how your model layer is well-behaved in this scenario.
#### 15. Explain what should happen model-wise if a user is deleted and the user has already created organizations, events and/or comments. Explain how your model layer is well-behaved in this scenario.