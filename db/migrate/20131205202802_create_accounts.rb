class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :city
      t.decimal :lat, {precision: 10, scale: 6}
      t.decimal :lon, {precision: 10, scale: 6}
      # t.belongs_to :user, index: true
      t.uuid :user_id

      t.timestamps
    end
  end
end
