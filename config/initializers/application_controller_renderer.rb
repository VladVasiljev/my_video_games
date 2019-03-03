# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end
#
require 'elasticsearch/model'

if ENV['https://f73agaf2fx:os9mr8w6yl@maple-689483418.eu-west-1.bonsaisearch.net']
  Elasticsearch::Model.client = Elasticsearch::Client.new({url: ENV['https://f73agaf2fx:os9mr8w6yl@maple-689483418.eu-west-1.bonsaisearch.net'], logs: true})
end
