class SearchController < ApplicationController
  def search
    @events = Event.where("name LIKE ?","%#{params[:search]}%").or(Event.where("description LIKE ?","%#{params[:search]}%"))
    @users =  User.where("name LIKE ?","%#{params[:search]}%")
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :start_date, :user_id )
  end
end


#
# t.string "name"
# t.date "start_date"
# t.string "description"
# t.integer "minVotes"
# t.integer "assistants"
# t.boolean "public"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.integer "user_id"
# t.integer "organization_id"
# t.index ["organization_id"], name: "index_events_on_organization_id"
# t.index ["user_id"], name: "index_events_on_user_id"