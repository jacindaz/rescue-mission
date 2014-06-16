class UsersChangeColumn < ActiveRecord::Migration
  def change
    rename_column(:users, :questions, :questions_id)
    rename_column(:users, :answers, :answers_id)
  end
end
