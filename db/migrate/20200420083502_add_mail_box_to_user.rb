class AddMailBoxToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :mail_box, null: true, foreign_key: true
  end
end
