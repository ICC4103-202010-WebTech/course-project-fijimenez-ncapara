class CreateEventFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :event_files do |t|
      t.string :file
      t.string :type

      t.timestamps
    end
  end
end
