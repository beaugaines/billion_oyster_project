class ChangeColumnTypeForWaterConditions < ActiveRecord::Migration
  def up
    remove_column :observations, :water_conditions
    add_column :observations, :water_conditions, :string, array: true, default: '{}', null: false
  end

  def down
    remove_column :observations, :water_conditions
    add_column :observations, :water_conditions, :hstore, null: false
  end
end
