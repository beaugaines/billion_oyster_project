require 'spec_helper'

feature 'Student observation spec', %q{
  As a student
  I want to be able to add observation data
  From my mobile phone
  So we can collect useful data for our project
} do

  before do
    @user = create(:user)
    @account = create(:account)
    @user.update_attribute(:account, @account)
  end

  scenario 'student logs basic observations from the field', focus: true do
    login(@user)
    click_link 'My Observations'
    click_link 'New Observation'
    fill_in 'Name', with: 'Harbor School'
    fill_in 'City', with: 'New York'
    select 'moderator@bop.com', from: 'Account Moderator'
    click_button 'Create Account'
    expect(Account.first.name).to eql('Harbor School')
  end

end