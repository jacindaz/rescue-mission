class Answer < ActiveRecord::Base
  # validates :question_id, allow_nil: true, numericality: { only_integer: true },
  #           message: "The question_id in the answers table doesn't validate."
  # validates :user_id, allow_nil: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 5 }

  validates_uniqueness_of :description

  belongs_to :user
  belongs_to :question
end
