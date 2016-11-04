class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title
      t.text :post_content
      t.string :post_photo
      t.boolean :like
      t.text :video
      t.boolean :reblog
      t.string :hashtags
      t.integer :user_id
      t.integer :blog_id

      t.timestamps null: false
    end
  end
end
