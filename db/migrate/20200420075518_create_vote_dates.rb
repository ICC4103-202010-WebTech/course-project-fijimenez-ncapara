class CreateVoteDates < ActiveRecord::Migration[6.0]
  def change
    create_table :vote_dates do |t|

      t.timestamps
    end
  end
end
