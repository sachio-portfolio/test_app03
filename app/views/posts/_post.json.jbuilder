json.extract! post, :id, :divepoint, :status, :temp, :visibility, :content, :image, :video, :created_at, :updated_at
json.url post_url(post, format: :json)
