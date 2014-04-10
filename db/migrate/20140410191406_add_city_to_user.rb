class AddCityToUser < ActiveRecord::Migration
  def change
    add_column :users, :city, :string, null: false, default: ''
  end
end
