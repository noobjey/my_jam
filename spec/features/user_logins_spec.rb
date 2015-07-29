require 'rails_helper'



describe 'User' do


  it 'who is registered can login' do
    user = User.create(username: 'Joe', password: 'dirt')
    visit songs_path

    expect(page).to_not have_content('Welcome noobjey')

    expect(page).to have_link('Login')

    click_link('Login')

    expect(page).to have_field(user.username)
    expect(page).to have_field('password')

    fill_in 'session_username', with: 'noobjey'
    fill_in 'session_password', with: 'password'

    click_button 'Login'

    expect(page).to have_content('Welcome noobjey')
  end

end

