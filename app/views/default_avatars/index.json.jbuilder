json.array!(@default_avatars) do |default_avatar|
  json.extract! default_avatar, :id, :avatar_default
  json.url default_avatar_url(default_avatar, format: :json)
end
