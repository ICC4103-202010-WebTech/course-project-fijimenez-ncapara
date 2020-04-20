class RemoveAdministratorIdFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :administrator_id, :integer
  end
end
