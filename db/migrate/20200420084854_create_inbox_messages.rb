class CreateInboxMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :inbox_messages do |t|
      t.string :message

      t.timestamps
    end
  end
end
