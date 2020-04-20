class AddVoteDateToEventInvitation < ActiveRecord::Migration[6.0]
  def change
    add_reference :vote_dates, :event_invitation, null: true, foreign_key: true
  end
end
