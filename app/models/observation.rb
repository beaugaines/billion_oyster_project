class Observation < ActiveRecord::Base
  extend TimeSplitter::Accessors
  split_accessor :recorded_at, date_format: '%D', time_format: '%I:%M%p'

  store_accessor :recent_weather,

  belongs_to :account
  belongs_to :data_monkey, class_name: 'User'

  WATER_CONDITIONS = %w(Glassy/smooth Small\ chop Big\ chop
                        Ripples Small\ swell Big\ swell).freeze
  CAGE_CONDITIONS = %w(Clean Lightly\ fouled Medium\ fouling Heavy\ fouling).freeze
end
