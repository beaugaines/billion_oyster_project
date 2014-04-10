class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.belongs_to :account, index: true
      t.decimal :lat, precision: 10, scale: 6, null: false, default: 0.0000
      t.decimal :lon, precision: 10, scale: 6, null: false, default: 0.0000

      t.timestamps
    end
  end
end
