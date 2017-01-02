class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.string :fort
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
