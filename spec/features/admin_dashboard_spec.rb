require 'spec_helper'

feature 'Admin dashboard', %q{
  As an admin user
  I want to be able to sign in
  On the homepage
  And be redirected to the admin dashboard
  So I can administer the site
} do

  before do
    @admin = create(:user, :admin)
  end

  scenario 'admin user signin and redirect to admin dashboard' do
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: @admin.email, match: :prefer_exact
    fill_in 'Password', with: @admin.password, match: :prefer_exact
    click_button 'Sign in'
    expect(current_path).to eql admin_dashboard_path
  end

  scenario 'non-admin user cannot access admin dashboard' do
    @user = create(:user)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: @user.email, match: :prefer_exact
    fill_in 'Password', with: @user.password, match: :prefer_exact
    click_button 'Sign in'
    visit admin_dashboard_path
    expect(current_path).to eql dashboard_path
  end

end