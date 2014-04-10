class AddLatAndLonToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lat, :decimal, precision: 10, scale: 6, null: false, default: 40.6700 
    add_column :users, :lon, :decimal, precision: 10, scale: 6, null: false, default: 73.9400
  end
end
