FactoryBot.define do

  factory :requirement do
    name { "I want to see a river" }
  end

  factory :user do
    requirements { [FactoryBot.create(:requirement)] }
    email_address { "joe@gmail.com" }
    job_title { "Applications Programmer" }
  end

end
