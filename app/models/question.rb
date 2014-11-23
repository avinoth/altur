class Question < ActiveRecord::Base
  validates :content, presence: true, length: {minimum: 10}
end
