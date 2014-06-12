class Observation < ActiveRecord::Base
  extend TimeSplitter::Accessors
  split_accessor :recorded_at

  belongs_to :account
  belongs_to :data_monkey, class_name: 'User'
end
