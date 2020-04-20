class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :note
      t.string :file

      t.timestamps
    end
  end
end
