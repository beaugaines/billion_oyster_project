require 'spec_helper'

describe User do
  it 'is moderator' do
    user = create(:user, :moderator)
    expect(user.moderator?).to be_true
  end
end
