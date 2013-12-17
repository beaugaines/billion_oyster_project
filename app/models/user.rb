class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include Gravtastic
  gravtastic secure: true, default: :monsterid

  devise :invitable, :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :first, -> { order('created_at ASC').first }
  scope :last, -> { order('created_at ASC').last }

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one :account

  accepts_nested_attributes_for :account, allow_destroy: true

  def full_name
    first_name + ' ' + last_name
  end
  
end
