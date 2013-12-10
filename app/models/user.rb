class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :first, -> { order('created_at ASC').first }
  scope :last, -> { order('created_at ASC').last }

  has_one :account
end
