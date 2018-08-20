require 'rails_helper'

feature 'Visitor signs up' do
  scenario 'with valid email and password' do
    sign_up_with 'bob@bob.com', 'password1234'

    expect(page).to have_content 'Sign Out'
  end

  scenario 'with invalid email' do
    sign_up_with 'bob', 'password1234'

    expect(page).to have_content 'Email is invalid'
  end

  scenario 'with blank password' do
    sign_up_with 'bonnie@bonnie.com', ''

    expect(page).to have_content "Password can't be blank"
  end

  scenario 'with short password' do
    sign_up_with 'fred@fred.com', 'pass'

    expect(page).to have_content 'Password is too short (minimum is 6 characters)'
  end

  def sign_up_with(email, password)
    visit new_user_registration_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_button 'Sign up'
  end
end
