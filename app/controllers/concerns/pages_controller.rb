
class PagesController < ApplicationController
  def home
    @users = User.take(3)
  end
end