class Dashboard < ApplicationRecord
  has_many :questions
  validates :subject, :presence => true, :uniqueness => true
end
