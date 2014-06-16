class Answer < ActiveRecord::Base
  validates :question_id, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 50 }
  belongs_to :users
  belongs_to :questions
end
