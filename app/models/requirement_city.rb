class RequirementCity < ApplicationRecord
  belongs_to :city
  belongs_to :requirement
end
