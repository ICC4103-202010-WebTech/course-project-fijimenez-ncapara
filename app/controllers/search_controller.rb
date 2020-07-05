class SearchController < ApplicationController

  def search
    @allEvents = Event.all
    @events = Event.where("name LIKE ?","%#{params[:search]}%").or(Event.where("description LIKE ?","%#{params[:search]}%"))
    @events_user = Event.joins(:user).where("users.name LIKE ?","%#{params[:search]}%")
    @events_org = Event.joins(:organization).where("organizations.name LIKE ?","%#{params[:search]}%")

    @users =  User.where("name LIKE ?","%#{params[:search]}%")

    @number = (@events.ids + @events_org.ids + @events_user.ids).uniq

    @UserOnORG = Subscription.where(user: current_user)
    @organizations = Organization.where("name LIKE ?","%#{params[:search]}%")
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :start_date, :user_id )
  end
  def user_params
    params.require(:user).permit(:name, :email )
  end
  def organizations_params
    params.require(:organization).permit(:name)
  end
end

