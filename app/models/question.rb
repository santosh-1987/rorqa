class Question < ApplicationRecord
  belongs_to :dashboard
  has_many :answers,dependent: :destroy
  validates :question, :presence => true
end
