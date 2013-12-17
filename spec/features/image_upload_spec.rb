require 'spec_helper'

feature 'Image upload', %q{
  As an user
  When I create a post
  I want to be able to upload images
  From my dashboard
  So I can share my work with other users
} do

  before do
    @user = create(:user)
  end

  scenario 'user uploads new image', focus: true do
    login(@user)
    click_link 'My Posts'
    click_link 'Add new post'
    fill_in 'Title', with: 'My darling oysters!'
    fill_in 'Comment', with: 'They grow so fast!'

  end

end