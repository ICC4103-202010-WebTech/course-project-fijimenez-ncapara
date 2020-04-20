class AddAdministratorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :administrator, :boolean, default: FALSE
  end
end
