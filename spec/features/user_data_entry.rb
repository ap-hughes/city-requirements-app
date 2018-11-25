require 'rails_helper'

feature 'User enters their email and job title' do
  given!(:user) { FactoryBot.create(:user) }
  scenario 'with valid user registration options' do
    visit root_path
    fill_in 'Email', with: user.email_address
    select(user.job_title, :from => 'Job title')
    click_button 'Register'
    expect(page).to have_content 'requirements'
  end
end

feature 'User enters their city requirements' do
  given!(:user) { FactoryBot.create(:user) }
  scenario 'with valid requirement selections' do
    visit edit_user_path(user.id)
    page.check user.requirements.first.name
    click_button 'Submit'
    expect(page).to have_content "city options"
  end
end
