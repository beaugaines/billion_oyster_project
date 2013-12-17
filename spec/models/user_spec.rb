require 'spec_helper'

describe User do

  it 'has a valid factory' do
    a = create(:user)
    expect(a).to be_valid
  end

  it 'can create admin user' do
    a = create(:user, :admin)
    expect(a.admin?).to be_true
  end

  it 'can create moderator user' do
    a = create(:user, :moderator)
    expect(a.moderator?).to be_true
  end
  
  it 'is moderator' do
    user = create(:user, :moderator)
    expect(user.moderator?).to be_true
  end
end
