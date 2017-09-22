class Question < ApplicationRecord
  belongs_to :subject, :counter_cache => true
  has_many :answers,dependent: :destroy
  has_many :comments, as: :commentable
  has_many :tagged_services
  has_many :tags, through: :tagged_services
  validates :question, :presence => true

  scope :active, -> { where(active: 'true') }
  scope :inactive, -> { where(inactive: 'true') }
end