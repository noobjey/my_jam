require 'rails_helper'

describe 'User' do

  include Capybara::DSL

  it 'can create an account' do
    visit new_user_path

    expect(page).to have_content('Create Account')
    expect(page).to have_field('username')
    expect(page).to have_field('password')
    expect(page).to have_button('Create')
  end
end
