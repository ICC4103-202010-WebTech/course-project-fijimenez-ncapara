class AddInboxMessageToMailBox < ActiveRecord::Migration[6.0]
  def change
    add_reference :inbox_messages, :mail_box, null: true, foreign_key: true
  end
end
