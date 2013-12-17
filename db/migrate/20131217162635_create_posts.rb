class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :caption
      t.uuid :user_id, index: true

      t.timestamps
    end
  end
end
