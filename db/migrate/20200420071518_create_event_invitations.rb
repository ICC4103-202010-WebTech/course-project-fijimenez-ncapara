class CreateEventInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :event_invitations do |t|
      t.boolean :accepted, default: false

      t.timestamps
    end
  end
end
