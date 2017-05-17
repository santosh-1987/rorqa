class Question < ApplicationRecord
  belongs_to :subject
  has_many :answers,dependent: :destroy
  has_many :tagged_services
  has_many :tags, through: :tagged_services
  validates :question, :presence => true
end
