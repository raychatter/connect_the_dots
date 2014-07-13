json.array!(@posts) do |post|
  json.extract! post, :id, :content, :category, :upvotes, :user_id
  json.url post_url(post, format: :json)
end
