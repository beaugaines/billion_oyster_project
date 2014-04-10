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

  describe 'User#full_name' do
    it 'yields the correct full name' do
      u = create(:user)
      expect(u.full_name).to eql('bob#1 dobbs')
    end
  end
end
