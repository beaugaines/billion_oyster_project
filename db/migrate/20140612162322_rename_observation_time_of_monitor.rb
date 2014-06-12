class RenameObservationTimeOfMonitor < ActiveRecord::Migration
  def change
    rename_column :observations, :time_of_monitor, :recorded_at
  end
end
