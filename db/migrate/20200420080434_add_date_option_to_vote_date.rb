class AddDateOptionToVoteDate < ActiveRecord::Migration[6.0]
  def change
    add_reference :date_options, :vote_date, null: true, foreign_key: true
  end
end
