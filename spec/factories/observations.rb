# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :observation do
    account nil
    user nil
    site_name "MyString"
    wind_speed 1
    humidity 1
    sky_conditions "MyString"
    recent_weather ""
    time_of_monitor "2014-06-12 10:34:37"
    high_tide_level "9.99"
    approx_tide_level "MyString"
    water_conditions ""
    oyster_cage_conditions ""
    land_conditions "MyText"
    oyster_survey ""
    reef_associate_survey ""
    water_quality_assessment ""
    general_observations "MyText"
  end
end
