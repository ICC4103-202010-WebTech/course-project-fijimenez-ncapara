class AddEventInvitationToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :event_invitation, null: true, foreign_key: true
  end
end
