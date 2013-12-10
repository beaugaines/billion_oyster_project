require 'spec_helper'

feature 'New user invitation', %q{
  As an admin user
  I want to be able to invite users to create accounts
  From my dashboard
  So students and moderators can sign up and use the site
} do

  before do
    @admin = create(:user, :admin)
    @account = create(:account)
  end

  scenario 'add a new school account' do
    login(@admin)
    click_link 'Manage Accounts'
    click_link 'Invite new moderator'
    fill_in 'Name', with: 'Joe Moderator'
    fill_in 'Email', with: 'moderator@ps35.com'
    select 'Harbor School', from: 'Account'
    click_button 'Create account'
    expect(page).to have_content('Account successfully creted')
  end

end