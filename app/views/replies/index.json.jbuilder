json.array!(@replies) do |reply|
  json.extract! reply, :content, :micropost_id, :user_id
  json.url reply_url(reply, format: :json)
end