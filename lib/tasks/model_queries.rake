namespace :db do
  task :model_queries => :environment do
    puts("Query 1: Get all events created by certain user. (user -> id = 2)")
    result =Event.joins(:user).where(users: {id:2})
    puts(result)
    puts("EOQ")

    puts("Query 2 : Get all users belonging to an organization. (organization -> id = 1)")
    result =User.joins(:organizations).where(organizations: {id:1}).map{|x| x.name}
    puts(result)
    puts("EOQ")

    puts("Query 3: Get all public events in an organization. (organization -> id = 1)")
    result = Event.joins(user: :organizations).where(organizations: {id:1},public:true).map{|x| x.name}
    puts(result)
    puts("EOQ")

    puts("Query 4: Get all private events in an organization. (organization -> id = 1)")
    result = Event.joins(user: :organizations).where(organizations: {id:1},public:false).map{|x| x.name}
    puts(result)
    puts("EOQ")

    puts("Query 5: Get all guests that have been invited to a certain event. (event -> id = 1)")
    result = User.joins(event_invitations: :event).where(events: {id:1}).map{|x| x.name}
    puts(result)
    puts("EOQ")

    puts("Query 6:  Get all guests that have voted for a date option in a certain event. (event -> id = 1), it passes though VoteDate to know the ones who voted")
    result = User.joins(event_invitations: {vote_date: {date_option: :event}}).where(events: {id:1}).map{|x| x.name}
    puts(result)
    puts("EOQ")

    puts("Query 7: Get all comments written by users on a specific event. (event -> id = 2)")
    result = Comment.joins(:event).where(events: {id:2}).map{|x| x.description}
    puts(result)
    puts("EOQ")

    puts("Query 8: Get all comments written by a specific user on all events. (event -> id = 2),(user -> id = 2)")
    result = Comment.joins(:event,:user).where(events: {id:2},users: {id:2}).map{|x| x.description}
    puts(result)
    puts("EOQ")

    puts("Query 9: Get all users with administrative privileges in an organization. (organization -> id = 1)")
    result = User.joins(:organizations).where(organizations: {id:1},administrator:true).map{|x| x.name}
    puts(result)
    puts("EOQ")

    puts("Query 10: Get all users with administrative privileges in the system.")
    result = User.where(administrator:true).map{|x| x.name}
    puts(result)
    puts("EOQ")
  end
end