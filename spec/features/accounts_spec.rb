require 'spec_helper'

feature 'New account creation', %q{
  As an admin user
  I want to be able to add new accounts
  From my dashboard
  So schools can use the site
} do

  before do
    @admin = create(:user, :admin)
  end

  scenario 'add a new school account' do
    login(@admin)
    click_link 'Add new account'
    fill_in 'Name', with: 'Harbor School'
    fill_in 'Location', with: 'New York'
    fill_in 'Coordinator', with: 'Bob Bossman'
    fill_in 'Coordinator email', with: 'bob@bossman.com'
    click_button 'Create account'
    expect(page).to have_content('Account successfully creted')
  end

end