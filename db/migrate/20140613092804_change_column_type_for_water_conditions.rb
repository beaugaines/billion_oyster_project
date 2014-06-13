class ChangeColumnTypeForWaterConditions < ActiveRecord::Migration
  def change
    # change_column :observations, :water_conditions, "varchar[] USING (string_to_array(water_conditions, ','))"
    change_column :observations, :water_conditions, :string, array: true, default: '{}'
  end
end
