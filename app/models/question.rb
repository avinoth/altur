# encoding: UTF-8
class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  validates :question, presence: true, length: {minimum: 10}
  self.per_page = 10
end
