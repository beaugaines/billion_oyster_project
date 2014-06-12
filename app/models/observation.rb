class Observation < ActiveRecord::Base
  belongs_to :account
  belongs_to :data_monkey, class_name: 'User'
end
