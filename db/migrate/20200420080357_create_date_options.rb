class CreateDateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :date_options do |t|
      t.date :desired_date

      t.timestamps
    end
  end
end
