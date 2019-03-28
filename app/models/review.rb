class Review  < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  validates :game_id, uniqueness: {scope: :user_id, message: "Oops! You have already reviewed this game"}

  # Validating review form
  validates :comment,:hours_played,:rating, presence: true, allow_blank: false
end
