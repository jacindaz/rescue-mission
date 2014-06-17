class RemoveNullAnswersTable < ActiveRecord::Migration
  def change
    change_column(:answers, :user_id, :integer, :null => true)
    change_column(:answers, :question_id, :integer, :null => true)
  end
end
