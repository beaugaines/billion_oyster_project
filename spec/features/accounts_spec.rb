require 'spec_helper'

feature 'New account creation', %q{
  As an admin user
  I want to be able to add new accounts
  From my dashboard
  So schools can use the site
} do

  before do
    @admin = create(:user, :admin)
    @user = create(:user, :moderator)
  end

  scenario 'admin adds a new school account' do
    login(@admin)
    click_link 'Manage Accounts'
    click_link 'Add new account'
    fill_in 'Name', with: 'Harbor School'
    fill_in 'City', with: 'New York'
    select 'moderator@bop.com', from: 'Account Moderator'
    click_button 'Create Account'
    expect(Account.first.name).to eql('Harbor School')
  end

end