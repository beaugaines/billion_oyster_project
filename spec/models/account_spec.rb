require 'spec_helper'

describe Account do
  it 'has a valid factory' do
    a = create(:account)
    expect(a).to be_valid
  end
end
