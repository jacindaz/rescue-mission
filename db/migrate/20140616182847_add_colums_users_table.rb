class AddColumsUsersTable < ActiveRecord::Migration
  def change
    add_column(:users, :email, :string, null: false)
    add_column(:users, :username, :string, null: false)
  end
end
