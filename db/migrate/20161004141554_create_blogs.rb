class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :blog_name
      t.text :about_blog
      t.string :background_photo
      t.boolean :follow
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
