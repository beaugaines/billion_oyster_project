class AddSettingsToUser < ActiveRecord::Migration
  def change
    add_column :users, :settings, :hstore
    add_index :users, :settings
  end
end
