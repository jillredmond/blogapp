json.extract! post, :id, :post_title, :post_content, :post_photo, :like, :video, :reblog, :hashtags, :user_id, :blog_id, :created_at, :updated_at
json.url post_url(post, format: :json)