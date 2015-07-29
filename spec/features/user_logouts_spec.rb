require 'rails_helper'

RSpec.feature "UserLogouts", type: :feature do
  scenario "logged in user can logout" do
    user = User.create(username: 'Joe', password: 'dirt')
    logged_in_message = "Welcome #{user.username}"
    visit login_path

    click_link('Login')

    fill_in 'session_username', with: user.username
    fill_in 'session_password', with: 'dirt'

    click_button 'Login'

    expect(page).to have_content(logged_in_message)

    expect(page).to have_link("Logout")

    click_link("Logout")

    expect(page).to_not have_content(logged_in_message)

  end

end
