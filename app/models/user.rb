class User < ApplicationRecord
  include Statistics
  has_many :user_requirements
  has_many :requirements, through: :user_requirements
  validates :requirement_ids, presence: true, on: :update
  validates :email_address, :job_title, presence: true
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :job_title, inclusion: { in: ["Applications Programmer", "Computer Language Programmer",
    "Computer Programmer", "Junior Software Developer", "Mainframe Programmer", "Systems Programmer"], message: "%{value} is not a valid job title" }
end
