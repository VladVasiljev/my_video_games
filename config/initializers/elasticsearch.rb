if  Rails.env.development?
  url = ENV["https://f73agaf2fx:os9mr8w6yl@maple-689483418.eu-west-1.bonsaisearch.net"]
  transport_options = { request: { timeout: 250 } }
  options = { hosts: url, retry_on_failure: true, transport_options: transport_options }
  Searchkick.client = Elasticsearch::Client.new(options)
end