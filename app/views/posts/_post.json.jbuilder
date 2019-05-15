json.extract! post, :id, :title, :posted, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
