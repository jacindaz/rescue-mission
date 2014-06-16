class User  < ActiveRecord::Base
  validates :questions_id, allow_nil: true , numericality: { only_integer: true }
  validates :answers_id, allow_nil: true, numericality: { only_integer: true }
  validates :username, presence: true
  validates :email, presence: true

  validates_uniqueness_of :username
  validates_uniqueness_of :email

  has_many :questions
  has_many :answers
end
