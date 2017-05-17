class Answer < ApplicationRecord
  belongs_to :question
  has_many :comments, as: :commentable
  validates :answer, :presence => true
end
