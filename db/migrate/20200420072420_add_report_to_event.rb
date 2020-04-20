class AddReportToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :report, null: true, foreign_key: true
  end
end
