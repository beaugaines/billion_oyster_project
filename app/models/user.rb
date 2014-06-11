class User < ActiveRecord::Base

  devise :invitable, :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId
  friendly_id :full_name, use: :slugged

  include Gravtastic
  gravtastic secure: true,
             default: :monsterid,
             rating: 'G'

  has_attachment :avatar, accept: [:jpg, :png, :gif]

  scope :first, -> { order('created_at ASC').first }
  scope :last, -> { order('created_at ASC').last }

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  has_one :account
  #has_many :observations

  accepts_nested_attributes_for :account, allow_destroy: true

  def slug_candidates
    [
      :full_name,
      [:full_name, :city]
    ]
  end

  def full_name
    [first_name, last_name].join(' ')
  end
  
end
