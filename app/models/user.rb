class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :first, -> { order('created_at DESC').first }
  scope :last, -> { order('created_at DESC').last }

  has_one :account
end
