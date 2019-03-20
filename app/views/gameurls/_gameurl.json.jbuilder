json.extract! gameurl, :id, :url, :created_at, :updated_at
json.url gameurl_url(gameurl, format: :json)
