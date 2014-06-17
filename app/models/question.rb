class Question < ActiveRecord::Base
  #validates :user_id, :allow_nil => true
  validates :title, length: { minimum: 4 }, :uniqueness => {:message => "Someone has already posted this question."}
  validates :description, length: { minimum: 5 }

  validates_uniqueness_of :title
  validates_uniqueness_of :description

  belongs_to :user
  has_many :answers
end
