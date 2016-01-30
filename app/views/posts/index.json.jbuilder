json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :categories, :tags, :published_date, :published
  json.url post_url(post, format: :json)
end
