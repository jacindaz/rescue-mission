class Question < ActiveRecord::Base
  validates :answers_id, presence: true
  validates :user_id, presence: true
  validates :title, length: { minimum: 40 }, :uniqueness => {:message => "Someone has already posted this question."}
  validates :description, length: { minimum: 150 }

  validates_uniqueness_of :title
  validates_uniqueness_of :description

  belongs_to :user
  has_many :answers
end
