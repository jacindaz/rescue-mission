class Answer < ActiveRecord::Base
  validates :question_id, presence: true, numericality: { only_integer: true },
            message: "The question_id in the answers table doesn't validate."
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 50 }

  validates_uniqueness_of :description

  belongs_to :users
  belongs_to :questions
end
