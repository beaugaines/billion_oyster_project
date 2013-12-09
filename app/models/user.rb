class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :invitable
         :recoverable, :rememberable, :trackable, :validatable,

  scope :first, -> { order('created_at DESC').first }
  scope :last, -> { order('created_at DESC').last }

  has_one :account
end
