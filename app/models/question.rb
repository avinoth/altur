class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  validates :question, presence: true, length: {minimum: 10}
end
