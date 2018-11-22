require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures email address presence' do
      user = User.new(job_title: "Applications Programmer").save
      expect(user).to eq(false)
    end

    it 'ensures job title presence' do
      user = User.new(email_address: "joe@gmail.com").save
      expect(user).to eq(false)
    end

    it 'ensures job title is one of the specified selection' do
      user = User.new(email_address: "joe@gmail.com", job_title: "Software Developer").save
      expect(user).to eq(false)
    end

    it 'ensures email address is in a valid format' do
      user = User.new(email_address: "joe71.com", job_title: "Applications Programmer").save
      expect(user).to eq(false)
    end

    it 'should save a user record' do
      user = User.new(email_address: "joe@gmail.com", job_title: "Applications Programmer").save
      expect(user).to eq(true)
    end
  end
end
