class RenameObservationTimeOfMonitor < ActiveRecord::Migration
  def change
    rename_column :observations, :time_of_monitor, :date_and_time
  end
end
