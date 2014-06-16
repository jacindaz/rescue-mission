class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :answers_id
      t.integer :user_id, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
