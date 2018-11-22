class Requirement < ApplicationRecord
  has_many :requirement_cities
  has_many :cities, through: :requirement_cities
end
