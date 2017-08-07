class Answer < ApplicationRecord
  belongs_to  :question
  belongs_to  :question, foreign_key: :best_answer_id
  belongs_to  :user
  validates   :body, presence: true
end
