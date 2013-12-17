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

  scenario 'admin invites a new moderator', focus: true do
    login(@admin)
    click_link 'Manage Accounts'
    click_link 'Invite new moderator'
    fill_in 'Email', with: 'moderator@bop.com'
    select 'Harbor School', from: 'Account'
    click_button 'Send an invitation'
    expect(User.count).to eql(2)
  end

  scenario 'moderator invites a new student' do
    pending
  end

end