require 'spec_helper'

feature 'New user invitation', %q{
  As an admin user
  I want to be able to invite users to create accounts
  From my dashboard
  So students and moderators can sign up and use the site
} do

  before do
    @admin = create(:user, :admin)
    @user = create(:user)
  end

  scenario 'add a new school account' do
    login(@admin)
    click_link 'Manage Accounts'
    click_link 'Invite new user'
    fill_in 'Name', with: 'Joe User'
    fill_in 'City'd, with: 'New York'
    select 'Coordinator', with: 'Bob Bossman'
    click_button 'Create account'
    expect(page).to have_content('Account successfully creted')
  end

end