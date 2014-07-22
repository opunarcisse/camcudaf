json.array!(@reports) do |report|
  json.extract! report, :id, :body, :title, :user
  json.url report_url(report, format: :json)
end
