require 'spec_helper'

feature 'Edit profile', %q{
  As an user
  I want to be able to view my user profile
  To verify my settings
  And make changes
} do

  before do
    @user = create(:user)
  end

  scenario 'user visits their profile', focus: true do
    login(@user)
    click_link 'My Profile'
    within('body') { expect(page).to have_content('User settings for bob#1 dobbs') }
  end
end