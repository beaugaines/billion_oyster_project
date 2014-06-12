class Observation < ActiveRecord::Base
  extend TimeSplitter::Accessors
  split_accessor :date_and_time

  belongs_to :account
  belongs_to :data_monkey, class_name: 'User'
end
