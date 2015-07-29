require 'rails_helper'

describe 'User' do

  include Capybara::DSL

  it 'can create an account' do
    visit new_user_path

    expect(page).to have_content('Create Account')
    expect(page).to have_field('user_username')
    expect(page).to have_field('user_password')
    expect(page).to have_button('Create')

    fill_in 'user_username', with: 'noobjey'
    fill_in 'user_password', with: 'password'
    click_button 'Create'

    expect(page).to have_content('Welcome noobjey')
  end

end
