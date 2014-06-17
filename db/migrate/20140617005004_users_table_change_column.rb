class UsersTableChangeColumn < ActiveRecord::Migration
  def change
    change_column(:questions, :user_id, :integer, :null => true)
  end
end
