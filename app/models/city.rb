class City < ApplicationRecord
  has_many :requirement_cities
  has_many :requirements, through: :requirement_cities
end
