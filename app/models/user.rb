class User  < ActiveRecord::Base
  validates :questions_id, presence: true, numericality: { only_integer: true }
  validates :answers_id, presence: true, numericality: { only_integer: true }
  validates :username, presence: true
  validates :email, presence: true
  has_many :questions
  has_many :answers
end
