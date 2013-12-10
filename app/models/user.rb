class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :first, -> { order('created_at ASC').first }
  scope :last, -> { order('created_at ASC').last }

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one :account
end
