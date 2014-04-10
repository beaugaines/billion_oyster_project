require 'spec_helper'

feature 'Edit profile', %q{
  As an user
  I want to be able to view my user profile
  To verify my settings
  And make changes
} do

  before do
    @user = create(:user)
    @user.skip_confirmation!
  end

  scenario 'user visits their profile' do
    login(@user)
    click_link 'My Profile'
    within('body') { expect(page).to have_content('User settings for bob#1 dobbs') }
  end

  scenario 'user changes their email', focus: true do
    login(@user)
    click_link 'My Profile'
    click_link 'Edit Profile'
    fill_in 'Email', with: 'feh@dobbs.com'
    click_button 'Update'
    expect(page).to have_content('Update successful')
    expect(@user.email).to eql('feh@dobbs.com')
  end

  scenario 'user adds a user avatar' do
    pending
  end
end