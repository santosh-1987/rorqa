class Question < ApplicationRecord
  belongs_to :dashboard
  has_many :answers,dependent: :destroy
  has_many :comments, as: :commentable
  validates :question, :presence => true
end
