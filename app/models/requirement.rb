class Requirement < ApplicationRecord
  has_many :requirement_cities
  has_many :cities, through: :requirement_cities
  has_many :user_requirements
  has_many :users, through: :user_requirements
end
