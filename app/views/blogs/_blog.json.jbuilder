json.extract! blog, :id, :title, :content, :image_url, :is_active, :created_at, :updated_at
json.url blog_url(blog, format: :json)
