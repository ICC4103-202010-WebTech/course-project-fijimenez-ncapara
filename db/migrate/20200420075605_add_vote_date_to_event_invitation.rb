class AddVoteDateToEventInvitation < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_invitations, :vote_date, null: true, foreign_key: true
  end
end
