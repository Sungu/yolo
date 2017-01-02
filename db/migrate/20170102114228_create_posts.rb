class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :day
      t.integer :from
      t.integer :target
      t.string :from_image
      t.string :target_image

      t.timestamps null: false
    end
  end
end
