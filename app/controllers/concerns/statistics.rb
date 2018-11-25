module Statistics
  extend ActiveSupport::Concern

  module ClassMethods
    def check_rank_cities(user_requirements)
      cities = []
      cities_hash = Hash.new(0)
      user_requirements.each do |req|
        req.cities.each do |city|
          cities << city.name
        end
      end
      cities.each { |city| cities_hash[city] += 1 }
      cities_hash = cities_hash.sort_by { |key, value| [-value, key] }.to_h
    end
  end

end
