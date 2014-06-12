class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.belongs_to :account, index: true
      t.references :user, index: true
      t.string :site_name, null: false
      t.integer :wind_speed, null: false
      t.integer :humidity, null: false
      t.string :sky_conditions, null: false
      t.hstore :recent_weather, null: false
      t.datetime :time_of_monitor, null: false
      t.decimal :high_tide_level, null: false
      t.string :approx_tide_level, null: false
      t.hstore :water_conditions, null: false
      t.hstore :oyster_cage_conditions, null: false
      t.text :land_conditions, null: false
      t.hstore :oyster_survey, null: false
      t.hstore :reef_associate_survey, null: false
      t.hstore :water_quality_assessment, null: false
      t.text :general_observations, null: false

      t.timestamps
    end
  end
end
