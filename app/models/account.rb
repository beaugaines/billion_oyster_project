class Account < ActiveRecord::Base
  belongs_to :user
  has_many :observations
  has_many :sites

  def owner_email
    user.email
  end

  def owner_name
    user.full_name
  end

  def owner_gravatar
    user.gravatar_url
  end
end
