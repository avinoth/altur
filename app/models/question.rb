class Question < ActiveRecord::Base
  has_many :answers
  validates :question, presence: true, length: {minimum: 10}
end
