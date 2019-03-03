class Game  < ActiveRecord::Base
  # searchkick
  Elasticsearch::Model.client = Elasticsearch::Client.new url: ENV['https://f73agaf2fx:os9mr8w6yl@maple-689483418.eu-west-1.bonsaisearch.net/games'], log: true
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :user
  has_many :reviews

  has_attached_file :image, styles: { medium: "220x270#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
