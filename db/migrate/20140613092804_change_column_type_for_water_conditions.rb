class ChangeColumnTypeForWaterConditions < ActiveRecord::Migration
  def up
    drop_column :observations, :water_conditions
    add_column :observations, :water_conditions, :string, array: true, default: '{}'
  end

  def down
    drop_column :observations, :water_conditions
    add_column :observations, :water_conditions, :hstore
  end
end
