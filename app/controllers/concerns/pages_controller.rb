
class PagesController < ApplicationController
  def home
    @users = User.take(3)
    @events = Event.first(5)
    @comments = Comment.all
  end
end