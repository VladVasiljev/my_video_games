if Rails.env == 'production'
  url = ENV["https://r6c1h7sz4:b6g15nbk81@olive-544765962.eu-west-1.bonsaisearch.net"]
  transport_options = { request: { timeout: 250 } }
  options = { hosts: url, retry_on_failure: true, transport_options: transport_options }
  Searchkick.client = Elasticsearch::Client.new(options)
end