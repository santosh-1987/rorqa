class Tag < ApplicationRecord
  has_many :tagged_services
  has_many :questions, through: :tagged_services
end
