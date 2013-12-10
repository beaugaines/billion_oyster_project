require 'spec_helper'

feature 'New account creation', %q{
  As an admin user
  I want to be able to add new accounts
  From my dashboard
  So schools can use the site
} do

  before do
    @admin = create(:user, :admin)
    @user = create(:user)
  end

  scenario 'admin adds a new school account' do
    login(@admin)
    click_link 'Manage Accounts'
    click_link 'Add new account'
    fill_in 'Name', with: 'Harbor School'
    fill_in 'City', with: 'New York'
    select 'Moderator', with: 'Bob Bossman'
    click_button 'Create account'
    expect(page).to have_content('Account successfully created')
  end

end