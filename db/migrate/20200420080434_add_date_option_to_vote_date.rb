class AddDateOptionToVoteDate < ActiveRecord::Migration[6.0]
  def change
    add_reference :vote_dates, :date_option, null: true, foreign_key: true
  end
end
