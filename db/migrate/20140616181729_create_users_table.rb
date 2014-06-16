class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :questions
      t.integer :answers
      t.timestamps
    end
  end
end
