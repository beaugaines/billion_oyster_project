require 'spec_helper'

feature 'Admin dashboard', %q{
  As an admin user
  I want to be able to sign in
  On the homepage
  And be redirected to the admin dashboard
  So I can administer the site
} do

  before do
    @user = create(:user, :admin)
  end

  scenario 'signin and redirect to admin dashboard', focus: true do
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: @user.email, match: :prefer_exact
    fill_in 'Password', with: @user.password, match: :prefer_exact
    click_button 'Sign in'
    expect(current_path).to eql admin_dashboard_path
  end

  scenario 'add a new school account' do
    pending
  end

end