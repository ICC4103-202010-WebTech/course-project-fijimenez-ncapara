class AddDateOptionToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :date_option, null: true, foreign_key: true
  end
end
