json.extract! blog, :id, :blog_name, :about_blog, :background_photo, :follow, :user_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)