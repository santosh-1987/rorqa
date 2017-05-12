class Dashboard < ApplicationRecord
  validates :subject, :presence => true, :uniqueness => true
end
