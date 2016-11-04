json.extract! dashboard, :id, :dash_name, :blog_id, :user_id, :created_at, :updated_at
json.url dashboard_url(dashboard, format: :json)