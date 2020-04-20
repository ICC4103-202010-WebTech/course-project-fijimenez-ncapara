class AddInboxMessageToMailBox < ActiveRecord::Migration[6.0]
  def change
    add_reference :mail_boxes, :inbox_message, null: true, foreign_key: true
  end
end
