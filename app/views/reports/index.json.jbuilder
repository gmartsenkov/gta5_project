json.array!(@reports) do |report|
  json.extract! report, :id, :user_id, :url, :bad_behavior, :bad_host
  json.url report_url(report, format: :json)
end
