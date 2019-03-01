class Review < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :game_id, uniqueness: {scope: :user_id, message: "Oops! You have already review this game"}
end
