class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.string :description
      t.integer :minVotes
      t.integer :assistants
      t.boolean :public

      t.timestamps
    end
  end
end
