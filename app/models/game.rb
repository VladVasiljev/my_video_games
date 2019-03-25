class Game  < ApplicationRecord
  searchkick
  belongs_to :user
  has_many :reviews

  has_attached_file :image, styles: { medium: "220x270#" }, default_url: 'https://i.imgur.com/zn08sSD.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
