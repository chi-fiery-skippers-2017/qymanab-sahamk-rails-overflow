class Question < ApplicationRecord
  belongs_to  :author, class_name: "User"
  has_many    :answers
  # has_one     :best_answer, class_name: "Answer"
  validates   :title, :body, presence: true

end
